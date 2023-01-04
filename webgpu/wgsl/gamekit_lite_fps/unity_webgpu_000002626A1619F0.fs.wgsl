struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_MainTex_TexelSize : vec4<f32>,
  x_BloomTex_TexelSize : vec4<f32>,
  x_Bloom_DirtTileOffset : vec4<f32>,
  x_Bloom_Settings : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_Bloom_Color : vec3<f32>,
  x_ChromaticAberration_Amount : f32,
  x_Lut3D_Params : vec2<f32>,
  x_PostExposure : f32,
  x_LumaInAlpha : f32,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat7 : vec2<f32>;

var<private> u_xlat21 : f32;

@group(0) @binding(0) var<uniform> x_51 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlati21 : i32;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat16 : vec2<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

@group(0) @binding(5) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(11) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_BloomTex : sampler;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_Bloom_DirtTex : sampler;

var<private> u_xlat22 : f32;

@group(0) @binding(6) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(12) var sampler_Lut3D : sampler;

var<private> u_xlatb1 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb16 : bool;

var<private> u_xlati22 : i32;

fn main_1() {
  var u_xlati_loop_1 : i32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_23);
  u_xlat0.x = x_24.x;
  let x_32 : vec2<f32> = vs_TEXCOORD0;
  u_xlat7 = ((x_32 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_40 : vec2<f32> = u_xlat7;
  let x_41 : vec2<f32> = u_xlat7;
  u_xlat21 = dot(x_40, x_41);
  let x_43 : f32 = u_xlat21;
  let x_45 : vec2<f32> = u_xlat7;
  u_xlat7 = (vec2<f32>(x_43, x_43) * x_45);
  let x_47 : vec2<f32> = u_xlat7;
  let x_56 : f32 = x_51.x_ChromaticAberration_Amount;
  let x_58 : f32 = x_51.x_ChromaticAberration_Amount;
  let x_59 : vec2<f32> = vec2<f32>(x_56, x_58);
  u_xlat7 = (x_47 * vec2<f32>(x_59.x, x_59.y));
  let x_65 : vec2<f32> = u_xlat7;
  let x_70 : vec4<f32> = x_51.x_MainTex_TexelSize;
  let x_72 : vec2<f32> = (-(x_65) * vec2<f32>(x_70.z, x_70.w));
  let x_73 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_72.x, x_72.y, x_73.z, x_73.w);
  let x_75 : vec4<f32> = u_xlat1;
  let x_79 : vec2<f32> = (vec2<f32>(x_75.x, x_75.y) * vec2<f32>(0.5f, 0.5f));
  let x_80 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_79.x, x_79.y, x_80.z, x_80.w);
  let x_82 : vec4<f32> = u_xlat1;
  let x_84 : vec4<f32> = u_xlat1;
  u_xlat21 = dot(vec2<f32>(x_82.x, x_82.y), vec2<f32>(x_84.x, x_84.y));
  let x_87 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_87);
  let x_91 : f32 = u_xlat21;
  u_xlati21 = i32(x_91);
  let x_93 : i32 = u_xlati21;
  u_xlati21 = max(x_93, 3i);
  let x_96 : i32 = u_xlati21;
  u_xlati21 = min(x_96, 16i);
  let x_99 : i32 = u_xlati21;
  u_xlat1.x = f32(x_99);
  let x_102 : vec2<f32> = u_xlat7;
  let x_104 : vec4<f32> = u_xlat1;
  u_xlat7 = (-(x_102) / vec2<f32>(x_104.x, x_104.x));
  u_xlat2.y = 0.0f;
  u_xlat3.w = 1.0f;
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlat4.w = 0.0f;
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlat5.w = 0.0f;
  let x_127 : vec2<f32> = vs_TEXCOORD0;
  u_xlat8 = x_127;
  u_xlati_loop_1 = 0i;
  loop {
    let x_136 : i32 = u_xlati_loop_1;
    let x_137 : i32 = u_xlati21;
    if ((x_136 < x_137)) {
    } else {
      break;
    }
    let x_141 : i32 = u_xlati_loop_1;
    u_xlat16.x = f32(x_141);
    let x_145 : f32 = u_xlat16.x;
    u_xlat16.x = (x_145 + 0.5f);
    let x_149 : f32 = u_xlat16.x;
    let x_151 : f32 = u_xlat1.x;
    u_xlat2.x = (x_149 / x_151);
    let x_154 : vec2<f32> = u_xlat8;
    u_xlat16 = x_154;
    let x_155 : vec2<f32> = u_xlat16;
    u_xlat16 = clamp(x_155, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_159 : vec2<f32> = u_xlat16;
    let x_161 : f32 = x_51.x_RenderViewportScaleFactor;
    u_xlat16 = (x_159 * vec2<f32>(x_161, x_161));
    let x_170 : vec2<f32> = u_xlat16;
    let x_171 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_170, 0.0f);
    u_xlat6 = x_171;
    let x_177 : vec4<f32> = u_xlat2;
    let x_179 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_177.x, x_177.y), 0.0f);
    let x_180 : vec3<f32> = vec3<f32>(x_179.x, x_179.y, x_179.z);
    let x_181 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_180.x, x_180.y, x_180.z, x_181.w);
    let x_183 : vec4<f32> = u_xlat6;
    let x_184 : vec4<f32> = u_xlat3;
    let x_186 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_183 * x_184) + x_186);
    let x_188 : vec4<f32> = u_xlat3;
    let x_189 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_188 + x_189);
    let x_191 : vec2<f32> = u_xlat7;
    let x_192 : vec2<f32> = u_xlat8;
    u_xlat8 = (x_191 + x_192);

    continuing {
      let x_194 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_194 + 1i);
    }
  }
  let x_196 : vec4<f32> = u_xlat4;
  let x_197 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_196 / x_197);
  let x_199 : vec4<f32> = u_xlat0;
  let x_201 : vec4<f32> = u_xlat1;
  let x_203 : vec3<f32> = (vec3<f32>(x_199.x, x_199.x, x_199.x) * vec3<f32>(x_201.x, x_201.y, x_201.z));
  let x_204 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_203.x, x_203.y, x_203.z, x_204.w);
  let x_208 : vec4<f32> = x_51.x_BloomTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_208.x, x_208.y, x_208.x, x_208.y) * vec4<f32>(1.0f, 1.0f, -1.0f, 0.0f));
  let x_212 : vec4<f32> = u_xlat0;
  let x_218 : vec3<f32> = x_51.x_Bloom_Settings;
  let x_221 : vec2<f32> = vs_TEXCOORD0;
  u_xlat2 = ((-(vec4<f32>(x_212.x, x_212.y, x_212.w, x_212.y)) * vec4<f32>(x_218.x, x_218.x, x_218.x, x_218.x)) + vec4<f32>(x_221.x, x_221.y, x_221.x, x_221.y));
  let x_224 : vec4<f32> = u_xlat2;
  u_xlat2 = clamp(x_224, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_228 : vec4<f32> = u_xlat2;
  let x_230 : f32 = x_51.x_RenderViewportScaleFactor;
  u_xlat2 = (x_228 * vec4<f32>(x_230, x_230, x_230, x_230));
  let x_238 : vec4<f32> = u_xlat2;
  let x_240 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_238.x, x_238.y));
  u_xlat3 = x_240;
  let x_244 : vec4<f32> = u_xlat2;
  let x_246 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_244.z, x_244.w));
  u_xlat2 = x_246;
  let x_247 : vec4<f32> = u_xlat2;
  let x_250 : vec4<f32> = u_xlat3;
  u_xlat2 = ((x_247 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_250);
  let x_252 : vec4<f32> = u_xlat0;
  let x_256 : vec3<f32> = x_51.x_Bloom_Settings;
  let x_259 : vec2<f32> = vs_TEXCOORD0;
  let x_260 : vec2<f32> = ((-(vec2<f32>(x_252.z, x_252.y)) * vec2<f32>(x_256.x, x_256.x)) + x_259);
  let x_261 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_260.x, x_260.y, x_261.z, x_261.w);
  let x_263 : vec4<f32> = u_xlat3;
  let x_267 : vec2<f32> = clamp(vec2<f32>(x_263.x, x_263.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_268 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_267.x, x_267.y, x_268.z, x_268.w);
  let x_270 : vec4<f32> = u_xlat3;
  let x_273 : f32 = x_51.x_RenderViewportScaleFactor;
  let x_275 : vec2<f32> = (vec2<f32>(x_270.x, x_270.y) * vec2<f32>(x_273, x_273));
  let x_276 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_275.x, x_275.y, x_276.z, x_276.w);
  let x_281 : vec4<f32> = u_xlat3;
  let x_283 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_281.x, x_281.y));
  u_xlat3 = x_283;
  let x_284 : vec4<f32> = u_xlat2;
  let x_285 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_284 + x_285);
  let x_287 : vec4<f32> = u_xlat0;
  let x_290 : vec3<f32> = x_51.x_Bloom_Settings;
  let x_293 : vec2<f32> = vs_TEXCOORD0;
  u_xlat3 = ((vec4<f32>(x_287.z, x_287.w, x_287.x, x_287.w) * vec4<f32>(x_290.x, x_290.x, x_290.x, x_290.x)) + vec4<f32>(x_293.x, x_293.y, x_293.x, x_293.y));
  let x_296 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_296, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_300 : vec4<f32> = u_xlat3;
  let x_302 : f32 = x_51.x_RenderViewportScaleFactor;
  u_xlat3 = (x_300 * vec4<f32>(x_302, x_302, x_302, x_302));
  let x_308 : vec4<f32> = u_xlat3;
  let x_310 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_308.x, x_308.y));
  u_xlat4 = x_310;
  let x_311 : vec4<f32> = u_xlat4;
  let x_313 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_311 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_313);
  let x_315 : vec2<f32> = vs_TEXCOORD0;
  let x_316 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_315.x, x_315.y, x_316.z, x_316.w);
  let x_318 : vec4<f32> = u_xlat3;
  let x_322 : vec2<f32> = clamp(vec2<f32>(x_318.x, x_318.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_323 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_322.x, x_322.y, x_323.z, x_323.w);
  let x_325 : vec4<f32> = u_xlat3;
  let x_328 : f32 = x_51.x_RenderViewportScaleFactor;
  let x_330 : vec2<f32> = (vec2<f32>(x_325.x, x_325.y) * vec2<f32>(x_328, x_328));
  let x_331 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_330.x, x_330.y, x_331.z, x_331.w);
  let x_336 : vec4<f32> = u_xlat3;
  let x_338 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_336.x, x_336.y));
  u_xlat4 = x_338;
  let x_339 : vec4<f32> = u_xlat4;
  let x_343 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_339 * vec4<f32>(4.0f, 4.0f, 4.0f, 4.0f)) + x_343);
  let x_348 : vec4<f32> = u_xlat3;
  let x_350 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_348.z, x_348.w));
  u_xlat3 = x_350;
  let x_351 : vec4<f32> = u_xlat3;
  let x_353 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_351 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_353);
  let x_355 : vec4<f32> = u_xlat0;
  let x_358 : vec3<f32> = x_51.x_Bloom_Settings;
  let x_361 : vec2<f32> = vs_TEXCOORD0;
  u_xlat3 = ((vec4<f32>(x_355.z, x_355.y, x_355.w, x_355.y) * vec4<f32>(x_358.x, x_358.x, x_358.x, x_358.x)) + vec4<f32>(x_361.x, x_361.y, x_361.x, x_361.y));
  let x_364 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_364, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_368 : vec4<f32> = u_xlat3;
  let x_370 : f32 = x_51.x_RenderViewportScaleFactor;
  u_xlat3 = (x_368 * vec4<f32>(x_370, x_370, x_370, x_370));
  let x_376 : vec4<f32> = u_xlat3;
  let x_378 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_376.x, x_376.y));
  u_xlat4 = x_378;
  let x_379 : vec4<f32> = u_xlat2;
  let x_380 : vec4<f32> = u_xlat4;
  u_xlat2 = (x_379 + x_380);
  let x_385 : vec4<f32> = u_xlat3;
  let x_387 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_385.z, x_385.w));
  u_xlat3 = x_387;
  let x_388 : vec4<f32> = u_xlat3;
  let x_390 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_388 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_390);
  let x_392 : vec4<f32> = u_xlat0;
  let x_395 : vec3<f32> = x_51.x_Bloom_Settings;
  let x_398 : vec2<f32> = vs_TEXCOORD0;
  let x_399 : vec2<f32> = ((vec2<f32>(x_392.x, x_392.y) * vec2<f32>(x_395.x, x_395.x)) + x_398);
  let x_400 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_399.x, x_399.y, x_400.z, x_400.w);
  let x_402 : vec4<f32> = u_xlat0;
  let x_406 : vec2<f32> = clamp(vec2<f32>(x_402.x, x_402.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_407 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_406.x, x_406.y, x_407.z, x_407.w);
  let x_409 : vec4<f32> = u_xlat0;
  let x_412 : f32 = x_51.x_RenderViewportScaleFactor;
  let x_414 : vec2<f32> = (vec2<f32>(x_409.x, x_409.y) * vec2<f32>(x_412, x_412));
  let x_415 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_414.x, x_414.y, x_415.z, x_415.w);
  let x_420 : vec4<f32> = u_xlat0;
  let x_422 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_420.x, x_420.y));
  u_xlat0 = x_422;
  let x_423 : vec4<f32> = u_xlat0;
  let x_424 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_423 + x_424);
  let x_426 : vec4<f32> = u_xlat0;
  let x_428 : vec3<f32> = x_51.x_Bloom_Settings;
  u_xlat0 = (x_426 * vec4<f32>(x_428.y, x_428.y, x_428.y, x_428.y));
  let x_431 : vec2<f32> = vs_TEXCOORD0;
  let x_433 : vec4<f32> = x_51.x_Bloom_DirtTileOffset;
  let x_437 : vec4<f32> = x_51.x_Bloom_DirtTileOffset;
  let x_439 : vec2<f32> = ((x_431 * vec2<f32>(x_433.x, x_433.y)) + vec2<f32>(x_437.z, x_437.w));
  let x_440 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_439.x, x_439.y, x_440.z, x_440.w);
  let x_447 : vec4<f32> = u_xlat2;
  let x_449 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_447.x, x_447.y));
  let x_450 : vec3<f32> = vec3<f32>(x_449.x, x_449.y, x_449.z);
  let x_451 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_450.x, x_450.y, x_450.z, x_451.w);
  let x_453 : vec4<f32> = u_xlat0;
  let x_457 : vec3<f32> = (vec3<f32>(x_453.x, x_453.y, x_453.z) * vec3<f32>(0.0625f, 0.0625f, 0.0625f));
  let x_458 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_457.x, x_457.y, x_457.z, x_458.w);
  let x_460 : vec4<f32> = u_xlat2;
  let x_463 : vec3<f32> = x_51.x_Bloom_Settings;
  let x_465 : vec3<f32> = (vec3<f32>(x_460.x, x_460.y, x_460.z) * vec3<f32>(x_463.z, x_463.z, x_463.z));
  let x_466 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_465.x, x_465.y, x_465.z, x_466.w);
  let x_468 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_468 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 1.0f));
  let x_471 : vec4<f32> = u_xlat0;
  let x_475 : vec3<f32> = x_51.x_Bloom_Color;
  let x_476 : vec3<f32> = (vec3<f32>(x_471.x, x_471.y, x_471.z) * x_475);
  let x_477 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_476.x, x_476.y, x_476.z, x_477.w);
  let x_480 : f32 = u_xlat0.w;
  u_xlat4.w = (x_480 * 0.0625f);
  let x_483 : vec4<f32> = u_xlat1;
  let x_484 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_483 + x_484);
  let x_486 : vec4<f32> = u_xlat3;
  let x_488 : vec4<f32> = u_xlat2;
  let x_490 : vec3<f32> = (vec3<f32>(x_486.x, x_486.y, x_486.z) * vec3<f32>(x_488.x, x_488.y, x_488.z));
  let x_491 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_490.x, x_490.y, x_490.z, x_491.w);
  u_xlat1.w = 0.0f;
  let x_494 : vec4<f32> = u_xlat0;
  let x_495 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_494 + x_495);
  let x_497 : vec4<f32> = u_xlat0;
  let x_501 : f32 = x_51.x_PostExposure;
  let x_503 : f32 = x_51.x_PostExposure;
  let x_505 : f32 = x_51.x_PostExposure;
  let x_507 : f32 = x_51.x_PostExposure;
  let x_508 : vec4<f32> = vec4<f32>(x_501, x_503, x_505, x_507);
  u_xlat0 = (vec4<f32>(x_497.w, x_497.x, x_497.y, x_497.z) * vec4<f32>(x_508.x, x_508.y, x_508.z, x_508.w));
  let x_515 : vec4<f32> = u_xlat0;
  let x_522 : vec3<f32> = ((vec3<f32>(x_515.y, x_515.z, x_515.w) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_523 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_522.x, x_522.y, x_522.z, x_523.w);
  let x_525 : vec4<f32> = u_xlat1;
  let x_527 : vec3<f32> = log2(vec3<f32>(x_525.x, x_525.y, x_525.z));
  let x_528 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_527.x, x_527.y, x_527.z, x_528.w);
  let x_530 : vec4<f32> = u_xlat1;
  let x_537 : vec3<f32> = ((vec3<f32>(x_530.x, x_530.y, x_530.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_538 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_537.x, x_537.y, x_537.z, x_538.w);
  let x_540 : vec4<f32> = u_xlat1;
  let x_544 : vec3<f32> = clamp(vec3<f32>(x_540.x, x_540.y, x_540.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_545 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_544.x, x_544.y, x_544.z, x_545.w);
  let x_547 : vec4<f32> = u_xlat1;
  let x_552 : vec2<f32> = x_51.x_Lut3D_Params;
  let x_554 : vec3<f32> = (vec3<f32>(x_547.x, x_547.y, x_547.z) * vec3<f32>(x_552.y, x_552.y, x_552.y));
  let x_555 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_554.x, x_554.y, x_554.z, x_555.w);
  let x_559 : f32 = x_51.x_Lut3D_Params.x;
  u_xlat22 = (x_559 * 0.5f);
  let x_561 : vec4<f32> = u_xlat1;
  let x_564 : vec2<f32> = x_51.x_Lut3D_Params;
  let x_567 : f32 = u_xlat22;
  let x_569 : vec3<f32> = ((vec3<f32>(x_561.x, x_561.y, x_561.z) * vec3<f32>(x_564.x, x_564.x, x_564.x)) + vec3<f32>(x_567, x_567, x_567));
  let x_570 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_569.x, x_569.y, x_569.z, x_570.w);
  let x_580 : vec4<f32> = u_xlat1;
  let x_582 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_580.x, x_580.y, x_580.z));
  let x_583 : vec3<f32> = vec3<f32>(x_582.x, x_582.y, x_582.z);
  let x_584 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_584.x, x_583.x, x_583.y, x_583.z);
  let x_590 : f32 = x_51.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_590);
  let x_592 : bool = u_xlatb1;
  if (x_592) {
    let x_595 : vec4<f32> = u_xlat0;
    let x_596 : vec3<f32> = vec3<f32>(x_595.y, x_595.z, x_595.w);
    let x_597 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_596.x, x_596.y, x_596.z, x_597.w);
    let x_599 : vec4<f32> = u_xlat1;
    let x_603 : vec3<f32> = clamp(vec3<f32>(x_599.x, x_599.y, x_599.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_604 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_603.x, x_603.y, x_603.z, x_604.w);
    let x_606 : vec4<f32> = u_xlat1;
    u_xlat0.x = dot(vec3<f32>(x_606.x, x_606.y, x_606.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_616 : vec4<f32> = u_xlat0;
  SV_Target0 = vec4<f32>(x_616.y, x_616.z, x_616.w, x_616.x);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

