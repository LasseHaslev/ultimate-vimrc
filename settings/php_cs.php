<?php
$config = PhpCsFixer\Config::create()
    ->setRiskyAllowed(true)
    ->setRules([
        '@Symfony' => true,

        // Arrays
        'array_syntax' => ['syntax' => 'short'],
        'array_indentation' => true,

        // Class element ordering
        'ordered_class_elements'=>true,
        'ordered_imports'=>[
            'sortAlgorithm'=>'length',
        ],

        // Doc blocks
        'phpdoc_add_missing_param_annotation' => [
            'only_untyped'=>false,
        ],
        'phpdoc_order' => true,
        'phpdoc_align' => true,
    ])
    // ->setFinder(
        // PhpCsFixer\Finder::create()
            // // ->exclude('tests/Fixtures')
            // ->in(__DIR__)
    // )
;
// special handling of fabbot.io service if it's using too old PHP CS Fixer version
try {
    PhpCsFixer\FixerFactory::create()
        ->registerBuiltInFixers()
        ->registerCustomFixers($config->getCustomFixers())
        ->useRuleSet(new PhpCsFixer\RuleSet($config->getRules()));
} catch (PhpCsFixer\ConfigurationException\InvalidConfigurationException $e) {
    $config->setRules([]);
} catch (UnexpectedValueException $e) {
    $config->setRules([]);
} catch (InvalidArgumentException $e) {
    $config->setRules([]);
}
return $config;
