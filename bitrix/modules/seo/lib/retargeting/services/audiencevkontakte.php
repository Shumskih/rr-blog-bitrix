<?

namespace Bitrix\Seo\Retargeting\Services;

use \Bitrix\Seo\Retargeting\Audience;
use \Bitrix\Seo\Retargeting\Response;

class AudienceVkontakte extends Audience
{
	const TYPE_CODE = 'vkontakte';

	const MAX_CONTACTS_PER_PACKET = 1000;
	const MIN_CONTACTS_FOR_ACTIVATING = 20;
	const URL_AUDIENCE_LIST = 'https://vk.com/ads?act=retargeting';

	protected static $listRowMap = array(
		'ID' => 'ID',
		'NAME' => 'NAME',
		'COUNT_VALID' => 'AUDIENCE_COUNT',
		'COUNT_MATCHED' => 'AUDIENCE_COUNT',
		'SUPPORTED_CONTACT_TYPES' => array(
			self::ENUM_CONTACT_TYPE_EMAIL,
			self::ENUM_CONTACT_TYPE_PHONE,
			self::ENUM_CONTACT_TYPE_IDFA_GAID,
			self::ENUM_CONTACT_TYPE_INTERNAL_ID
		),
	);

	public static function isSupportRemoveContacts()
	{
		return false;
	}

	public function add(array $data)
	{
		$response = $this->getRequest()->send(array(
			'methodName' => 'retargeting.audience.add',
			'parameters' => array(
				'accountId' => $this->accountId,
				'name' => $data['NAME'],
				'description' => ''
			)
		));

		$responseData = $response->getData();
		if (isset($responseData['id']))
		{
			$response->setId($responseData['id']);
		}

		return $response;
	}

	protected function prepareContacts(array $contacts = array())
	{
		$data = array();
		foreach (static::$listRowMap['SUPPORTED_CONTACT_TYPES'] as $contactType)
		{
			if (!isset($contacts[$contactType]))
			{
				continue;
			}

			$data[] = implode(',', $contacts[$contactType]);
		}

		return implode(',', $data);
	}

	public function importContacts($audienceId, array $contacts = array(), array $options)
	{

		return $this->getRequest()->send(array(
			'methodName' => 'retargeting.audience.contacts.add',
			'parameters' => array(
				'accountId' => $this->accountId,
				'audienceId' => $audienceId,
				'contacts' => $this->prepareContacts($contacts)
			)
		));
	}

	public function removeContacts($audienceId, array $contacts = array(), array $options)
	{
		$response = Response::create(static::TYPE_CODE);
		return $response;
	}

	public function getList()
	{
		return $this->getRequest()->send(array(
			'methodName' => 'retargeting.audience.list',
			'parameters' => array(
				'accountId' => $this->accountId
			)
		));
	}

	public static function isSupportAddAudience()
	{
		return true;
	}
}