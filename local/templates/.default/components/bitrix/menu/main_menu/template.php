<? if (!defined("B_PROLOG_INCLUDED") || B_PROLOG_INCLUDED !== true) die(); ?>

<header>
    <div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom box-shadow">
        <h5 class="my-0 mr-md-auto font-weight-normal">Blog</h5>
        <? if (!empty($arResult)): ?>
            <nav class="my-2 my-md-0 mr-md-3">
                <?
                foreach ($arResult as $arItem):
                    if ($arParams["MAX_LEVEL"] == 1 && $arItem["DEPTH_LEVEL"] > 1)
                        continue;
                    ?>
                    <?
                    if (getRequestUri() != '/'): ?>
                        <a class="p-2 text-dark" href="<?= $arItem["LINK"] ?>"><?= $arItem["TEXT"] ?></a>
                    <? endif; ?>
                <? endforeach ?>
            </nav>
        <? endif ?>
    </div>
</header>