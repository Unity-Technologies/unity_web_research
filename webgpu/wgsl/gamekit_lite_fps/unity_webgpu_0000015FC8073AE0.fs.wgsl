struct PGlobals {
  x_ScreenParams : vec4<f32>,
  x_Dithering_Coords : vec4<f32>,
  x_Lut3D_Params : vec2<f32>,
  x_PostExposure : f32,
  @size(4)
  padding : u32,
  x_Vignette_Color : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_Vignette_Center : vec2<f32>,
  @size(8)
  padding_2 : u32,
  x_Vignette_Settings : vec4<f32>,
  x_Vignette_Opacity : f32,
  x_Vignette_Mode : f32,
  x_Grain_Params1 : vec2<f32>,
  x_Grain_Params2 : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> u_xlatb12 : bool;

@group(0) @binding(0) var<uniform> x_52 : PGlobals;

var<private> u_xlat12 : f32;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(5) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(11) var sampler_Vignette_Mask : sampler;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat7 : f32;

@group(0) @binding(6) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_GrainTex : sampler;

@group(0) @binding(4) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(10) var sampler_Lut3D : sampler;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_DitheringTex : sampler;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_230 : f32;
  var x_554 : f32;
  var x_566 : f32;
  var x_578 : f32;
  var x_647 : f32;
  var x_660 : f32;
  var x_672 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_23);
  u_xlat0.x = x_24.x;
  let x_37 : vec2<f32> = vs_TEXCOORD1;
  let x_38 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_37);
  u_xlat1 = x_38;
  let x_40 : vec4<f32> = u_xlat0;
  let x_42 : vec4<f32> = u_xlat1;
  let x_44 : vec3<f32> = (vec3<f32>(x_40.x, x_40.x, x_40.x) * vec3<f32>(x_42.x, x_42.y, x_42.z));
  let x_45 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_44.x, x_44.y, x_44.z, x_45.w);
  let x_57 : f32 = x_52.x_Vignette_Mode;
  u_xlatb12 = (x_57 < 0.5f);
  let x_60 : bool = u_xlatb12;
  if (x_60) {
    let x_63 : vec2<f32> = vs_TEXCOORD0;
    let x_67 : vec2<f32> = x_52.x_Vignette_Center;
    let x_69 : vec2<f32> = (x_63 + -(x_67));
    let x_70 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_69.x, x_69.y, x_70.z, x_70.w);
    let x_72 : vec4<f32> = u_xlat1;
    let x_78 : vec4<f32> = x_52.x_Vignette_Settings;
    let x_80 : vec2<f32> = (abs(vec2<f32>(x_72.y, x_72.x)) * vec2<f32>(x_78.x, x_78.x));
    let x_81 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_81.x, x_80.x, x_80.y, x_81.w);
    let x_86 : f32 = x_52.x_ScreenParams.x;
    let x_89 : f32 = x_52.x_ScreenParams.y;
    u_xlat12 = (x_86 / x_89);
    let x_91 : f32 = u_xlat12;
    u_xlat12 = (x_91 + -1.0f);
    let x_96 : f32 = x_52.x_Vignette_Settings.w;
    let x_97 : f32 = u_xlat12;
    u_xlat12 = ((x_96 * x_97) + 1.0f);
    let x_101 : f32 = u_xlat12;
    let x_104 : f32 = u_xlat1.z;
    u_xlat1.x = (x_101 * x_104);
    let x_107 : vec4<f32> = u_xlat1;
    let x_108 : vec2<f32> = vec2<f32>(x_107.x, x_107.y);
    let x_109 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_108.x, x_108.y, x_109.z, x_109.w);
    let x_111 : vec4<f32> = u_xlat1;
    let x_116 : vec2<f32> = clamp(vec2<f32>(x_111.x, x_111.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_117 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_116.x, x_116.y, x_117.z, x_117.w);
    let x_119 : vec4<f32> = u_xlat1;
    let x_121 : vec2<f32> = log2(vec2<f32>(x_119.x, x_119.y));
    let x_122 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_121.x, x_121.y, x_122.z, x_122.w);
    let x_124 : vec4<f32> = u_xlat1;
    let x_127 : vec4<f32> = x_52.x_Vignette_Settings;
    let x_129 : vec2<f32> = (vec2<f32>(x_124.x, x_124.y) * vec2<f32>(x_127.z, x_127.z));
    let x_130 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_129.x, x_129.y, x_130.z, x_130.w);
    let x_132 : vec4<f32> = u_xlat1;
    let x_134 : vec2<f32> = exp2(vec2<f32>(x_132.x, x_132.y));
    let x_135 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_134.x, x_134.y, x_135.z, x_135.w);
    let x_137 : vec4<f32> = u_xlat1;
    let x_139 : vec4<f32> = u_xlat1;
    u_xlat12 = dot(vec2<f32>(x_137.x, x_137.y), vec2<f32>(x_139.x, x_139.y));
    let x_142 : f32 = u_xlat12;
    u_xlat12 = (-(x_142) + 1.0f);
    let x_145 : f32 = u_xlat12;
    u_xlat12 = max(x_145, 0.0f);
    let x_147 : f32 = u_xlat12;
    u_xlat12 = log2(x_147);
    let x_149 : f32 = u_xlat12;
    let x_151 : f32 = x_52.x_Vignette_Settings.y;
    u_xlat12 = (x_149 * x_151);
    let x_153 : f32 = u_xlat12;
    u_xlat12 = exp2(x_153);
    let x_158 : vec3<f32> = x_52.x_Vignette_Color;
    let x_161 : vec3<f32> = (-(x_158) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_162 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_161.x, x_161.y, x_161.z, x_162.w);
    let x_164 : f32 = u_xlat12;
    let x_166 : vec4<f32> = u_xlat1;
    let x_170 : vec3<f32> = x_52.x_Vignette_Color;
    let x_171 : vec3<f32> = ((vec3<f32>(x_164, x_164, x_164) * vec3<f32>(x_166.x, x_166.y, x_166.z)) + x_170);
    let x_172 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_171.x, x_171.y, x_171.z, x_172.w);
    let x_174 : vec4<f32> = u_xlat0;
    let x_176 : vec4<f32> = u_xlat1;
    let x_178 : vec3<f32> = (vec3<f32>(x_174.x, x_174.y, x_174.z) * vec3<f32>(x_176.x, x_176.y, x_176.z));
    let x_179 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_178.x, x_178.y, x_178.z, x_179.w);
    let x_183 : f32 = u_xlat1.w;
    u_xlat2.x = (x_183 + -1.0f);
    let x_186 : f32 = u_xlat12;
    let x_188 : f32 = u_xlat2.x;
    u_xlat2.w = ((x_186 * x_188) + 1.0f);
  } else {
    let x_198 : vec2<f32> = vs_TEXCOORD0;
    let x_199 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_198);
    u_xlat12 = x_199.w;
    let x_203 : f32 = u_xlat12;
    u_xlat3.x = (x_203 * 0.077399381f);
    let x_208 : f32 = u_xlat12;
    u_xlat7 = (x_208 + 0.055f);
    let x_211 : f32 = u_xlat7;
    u_xlat7 = (x_211 * 0.947867334f);
    let x_214 : f32 = u_xlat7;
    u_xlat7 = max(abs(x_214), 1.1920929e-07f);
    let x_218 : f32 = u_xlat7;
    u_xlat7 = log2(x_218);
    let x_220 : f32 = u_xlat7;
    u_xlat7 = (x_220 * 2.400000095f);
    let x_223 : f32 = u_xlat7;
    u_xlat7 = exp2(x_223);
    let x_226 : f32 = u_xlat12;
    u_xlatb12 = (0.040449999f >= x_226);
    let x_228 : bool = u_xlatb12;
    if (x_228) {
      let x_234 : f32 = u_xlat3.x;
      x_230 = x_234;
    } else {
      let x_236 : f32 = u_xlat7;
      x_230 = x_236;
    }
    let x_237 : f32 = x_230;
    u_xlat12 = x_237;
    let x_239 : vec3<f32> = x_52.x_Vignette_Color;
    u_xlat3 = (-(x_239) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_242 : f32 = u_xlat12;
    let x_244 : vec3<f32> = u_xlat3;
    let x_247 : vec3<f32> = x_52.x_Vignette_Color;
    u_xlat3 = ((vec3<f32>(x_242, x_242, x_242) * x_244) + x_247);
    let x_249 : vec4<f32> = u_xlat0;
    let x_251 : vec3<f32> = u_xlat3;
    let x_253 : vec4<f32> = u_xlat0;
    u_xlat3 = ((vec3<f32>(x_249.x, x_249.y, x_249.z) * x_251) + -(vec3<f32>(x_253.x, x_253.y, x_253.z)));
    let x_259 : f32 = x_52.x_Vignette_Opacity;
    let x_261 : vec3<f32> = u_xlat3;
    let x_263 : vec4<f32> = u_xlat0;
    let x_265 : vec3<f32> = ((vec3<f32>(x_259, x_259, x_259) * x_261) + vec3<f32>(x_263.x, x_263.y, x_263.z));
    let x_266 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_265.x, x_265.y, x_265.z, x_266.w);
    let x_269 : f32 = u_xlat1.w;
    u_xlat0.x = (x_269 + -1.0f);
    let x_272 : f32 = u_xlat12;
    let x_274 : f32 = u_xlat0.x;
    u_xlat2.w = ((x_272 * x_274) + 1.0f);
  }
  let x_278 : vec2<f32> = vs_TEXCOORD1;
  let x_281 : vec4<f32> = x_52.x_Grain_Params2;
  let x_285 : vec4<f32> = x_52.x_Grain_Params2;
  let x_287 : vec2<f32> = ((x_278 * vec2<f32>(x_281.x, x_281.y)) + vec2<f32>(x_285.z, x_285.w));
  let x_288 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_287.x, x_287.y, x_288.z, x_288.w);
  let x_295 : vec4<f32> = u_xlat0;
  let x_297 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_295.x, x_295.y));
  let x_298 : vec3<f32> = vec3<f32>(x_297.x, x_297.y, x_297.z);
  let x_299 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_298.x, x_298.y, x_298.z, x_299.w);
  let x_301 : vec4<f32> = u_xlat1;
  u_xlat3 = vec3<f32>(x_301.x, x_301.y, x_301.z);
  let x_303 : vec3<f32> = u_xlat3;
  u_xlat3 = clamp(x_303, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_307 : vec3<f32> = u_xlat3;
  u_xlat12 = dot(x_307, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_313 : f32 = u_xlat12;
  u_xlat12 = sqrt(x_313);
  let x_317 : f32 = x_52.x_Grain_Params1.x;
  let x_318 : f32 = u_xlat12;
  u_xlat12 = ((x_317 * -(x_318)) + 1.0f);
  let x_322 : vec4<f32> = u_xlat0;
  let x_324 : vec4<f32> = u_xlat1;
  let x_326 : vec3<f32> = (vec3<f32>(x_322.x, x_322.y, x_322.z) * vec3<f32>(x_324.x, x_324.y, x_324.z));
  let x_327 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
  let x_329 : vec4<f32> = u_xlat0;
  let x_332 : f32 = x_52.x_Grain_Params1.y;
  let x_334 : f32 = x_52.x_Grain_Params1.y;
  let x_336 : f32 = x_52.x_Grain_Params1.y;
  let x_338 : vec3<f32> = (vec3<f32>(x_329.x, x_329.y, x_329.z) * vec3<f32>(x_332, x_334, x_336));
  let x_339 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_338.x, x_338.y, x_338.z, x_339.w);
  let x_341 : vec4<f32> = u_xlat0;
  let x_343 : f32 = u_xlat12;
  let x_346 : vec4<f32> = u_xlat1;
  let x_348 : vec3<f32> = ((vec3<f32>(x_341.x, x_341.y, x_341.z) * vec3<f32>(x_343, x_343, x_343)) + vec3<f32>(x_346.x, x_346.y, x_346.z));
  let x_349 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_348.x, x_348.y, x_348.z, x_349.w);
  let x_351 : vec4<f32> = u_xlat2;
  let x_354 : f32 = x_52.x_PostExposure;
  let x_356 : f32 = x_52.x_PostExposure;
  let x_358 : f32 = x_52.x_PostExposure;
  let x_360 : f32 = x_52.x_PostExposure;
  let x_361 : vec4<f32> = vec4<f32>(x_354, x_356, x_358, x_360);
  u_xlat0 = (x_351 * vec4<f32>(x_361.x, x_361.y, x_361.z, x_361.w));
  let x_368 : vec4<f32> = u_xlat0;
  let x_375 : vec3<f32> = ((vec3<f32>(x_368.x, x_368.y, x_368.z) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_376 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_375.x, x_375.y, x_375.z, x_376.w);
  let x_378 : vec4<f32> = u_xlat0;
  let x_380 : vec3<f32> = log2(vec3<f32>(x_378.x, x_378.y, x_378.z));
  let x_381 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_380.x, x_380.y, x_380.z, x_381.w);
  let x_383 : vec4<f32> = u_xlat0;
  let x_390 : vec3<f32> = ((vec3<f32>(x_383.x, x_383.y, x_383.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_391 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_390.x, x_390.y, x_390.z, x_391.w);
  let x_393 : vec4<f32> = u_xlat0;
  let x_397 : vec3<f32> = clamp(vec3<f32>(x_393.x, x_393.y, x_393.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_398 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_397.x, x_397.y, x_397.z, x_398.w);
  let x_400 : vec4<f32> = u_xlat0;
  let x_404 : vec2<f32> = x_52.x_Lut3D_Params;
  let x_406 : vec3<f32> = (vec3<f32>(x_400.x, x_400.y, x_400.z) * vec3<f32>(x_404.y, x_404.y, x_404.y));
  let x_407 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_406.x, x_406.y, x_406.z, x_407.w);
  let x_410 : f32 = x_52.x_Lut3D_Params.x;
  u_xlat1.x = (x_410 * 0.5f);
  let x_413 : vec4<f32> = u_xlat0;
  let x_416 : vec2<f32> = x_52.x_Lut3D_Params;
  let x_419 : vec4<f32> = u_xlat1;
  let x_421 : vec3<f32> = ((vec3<f32>(x_413.x, x_413.y, x_413.z) * vec3<f32>(x_416.x, x_416.x, x_416.x)) + vec3<f32>(x_419.x, x_419.x, x_419.x));
  let x_422 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_421.x, x_421.y, x_421.z, x_422.w);
  let x_432 : vec4<f32> = u_xlat0;
  let x_434 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_432.x, x_432.y, x_432.z));
  let x_435 : vec3<f32> = vec3<f32>(x_434.x, x_434.y, x_434.z);
  let x_436 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_435.x, x_435.y, x_435.z, x_436.w);
  let x_438 : vec2<f32> = vs_TEXCOORD0;
  let x_441 : vec4<f32> = x_52.x_Dithering_Coords;
  let x_445 : vec4<f32> = x_52.x_Dithering_Coords;
  let x_447 : vec2<f32> = ((x_438 * vec2<f32>(x_441.x, x_441.y)) + vec2<f32>(x_445.z, x_445.w));
  let x_448 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_447.x, x_447.y, x_448.z, x_448.w);
  let x_455 : vec4<f32> = u_xlat1;
  let x_457 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_455.x, x_455.y));
  u_xlat1.x = x_457.w;
  let x_461 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_461 * 2.0f) + -1.0f);
  let x_468 : f32 = u_xlat1.x;
  u_xlat5.x = ((x_468 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_474 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_474, 0.0f, 1.0f);
  let x_478 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_478 * 2.0f) + -1.0f);
  let x_483 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_483)) + 1.0f);
  let x_489 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_489);
  let x_493 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_493) + 1.0f);
  let x_498 : f32 = u_xlat1.x;
  let x_500 : f32 = u_xlat5.x;
  u_xlat1.x = (x_498 * x_500);
  let x_503 : vec4<f32> = u_xlat0;
  u_xlat5 = (vec3<f32>(x_503.x, x_503.y, x_503.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_508 : vec4<f32> = u_xlat0;
  let x_512 : vec3<f32> = max(abs(vec3<f32>(x_508.x, x_508.y, x_508.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_513 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_512.x, x_512.y, x_512.z, x_513.w);
  let x_515 : vec4<f32> = u_xlat2;
  let x_517 : vec3<f32> = log2(vec3<f32>(x_515.x, x_515.y, x_515.z));
  let x_518 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_517.x, x_517.y, x_517.z, x_518.w);
  let x_520 : vec4<f32> = u_xlat2;
  let x_524 : vec3<f32> = (vec3<f32>(x_520.x, x_520.y, x_520.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_525 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_524.x, x_524.y, x_524.z, x_525.w);
  let x_527 : vec4<f32> = u_xlat2;
  let x_529 : vec3<f32> = exp2(vec3<f32>(x_527.x, x_527.y, x_527.z));
  let x_530 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_529.x, x_529.y, x_529.z, x_530.w);
  let x_532 : vec4<f32> = u_xlat2;
  let x_539 : vec3<f32> = ((vec3<f32>(x_532.x, x_532.y, x_532.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_540 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_539.x, x_539.y, x_539.z, x_540.w);
  let x_547 : vec4<f32> = u_xlat0;
  let x_550 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_547.x, x_547.y, x_547.z, x_547.x));
  u_xlatb0 = vec3<bool>(x_550.x, x_550.y, x_550.z);
  let x_553 : bool = u_xlatb0.x;
  if (x_553) {
    let x_558 : f32 = u_xlat5.x;
    x_554 = x_558;
  } else {
    let x_561 : f32 = u_xlat2.x;
    x_554 = x_561;
  }
  let x_562 : f32 = x_554;
  u_xlat0.x = x_562;
  let x_565 : bool = u_xlatb0.y;
  if (x_565) {
    let x_570 : f32 = u_xlat5.y;
    x_566 = x_570;
  } else {
    let x_573 : f32 = u_xlat2.y;
    x_566 = x_573;
  }
  let x_574 : f32 = x_566;
  u_xlat0.y = x_574;
  let x_577 : bool = u_xlatb0.z;
  if (x_577) {
    let x_582 : f32 = u_xlat5.z;
    x_578 = x_582;
  } else {
    let x_585 : f32 = u_xlat2.z;
    x_578 = x_585;
  }
  let x_586 : f32 = x_578;
  u_xlat0.z = x_586;
  let x_588 : vec4<f32> = u_xlat1;
  let x_593 : vec4<f32> = u_xlat0;
  let x_595 : vec3<f32> = ((vec3<f32>(x_588.x, x_588.x, x_588.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_593.x, x_593.y, x_593.z));
  let x_596 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_595.x, x_595.y, x_595.z, x_596.w);
  let x_598 : vec4<f32> = u_xlat0;
  let x_601 : vec3<f32> = (vec3<f32>(x_598.x, x_598.y, x_598.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_602 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_601.x, x_601.y, x_601.z, x_602.w);
  let x_604 : vec4<f32> = u_xlat0;
  let x_607 : vec3<f32> = (vec3<f32>(x_604.x, x_604.y, x_604.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_608 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_607.x, x_607.y, x_607.z, x_608.w);
  let x_610 : vec4<f32> = u_xlat2;
  let x_613 : vec3<f32> = (vec3<f32>(x_610.x, x_610.y, x_610.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_614 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_613.x, x_613.y, x_613.z, x_614.w);
  let x_616 : vec4<f32> = u_xlat2;
  let x_619 : vec3<f32> = max(abs(vec3<f32>(x_616.x, x_616.y, x_616.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_620 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_619.x, x_619.y, x_619.z, x_620.w);
  let x_622 : vec4<f32> = u_xlat2;
  let x_624 : vec3<f32> = log2(vec3<f32>(x_622.x, x_622.y, x_622.z));
  let x_625 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_624.x, x_624.y, x_624.z, x_625.w);
  let x_627 : vec4<f32> = u_xlat2;
  let x_630 : vec3<f32> = (vec3<f32>(x_627.x, x_627.y, x_627.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_631 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_630.x, x_630.y, x_630.z, x_631.w);
  let x_633 : vec4<f32> = u_xlat2;
  let x_635 : vec3<f32> = exp2(vec3<f32>(x_633.x, x_633.y, x_633.z));
  let x_636 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_635.x, x_635.y, x_635.z, x_636.w);
  let x_639 : vec4<f32> = u_xlat0;
  let x_641 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_639.x, x_639.y, x_639.z, x_639.x));
  u_xlatb0 = vec3<bool>(x_641.x, x_641.y, x_641.z);
  let x_646 : bool = u_xlatb0.x;
  if (x_646) {
    let x_651 : f32 = u_xlat1.x;
    x_647 = x_651;
  } else {
    let x_654 : f32 = u_xlat2.x;
    x_647 = x_654;
  }
  let x_655 : f32 = x_647;
  SV_Target0.x = x_655;
  let x_659 : bool = u_xlatb0.y;
  if (x_659) {
    let x_664 : f32 = u_xlat1.y;
    x_660 = x_664;
  } else {
    let x_667 : f32 = u_xlat2.y;
    x_660 = x_667;
  }
  let x_668 : f32 = x_660;
  SV_Target0.y = x_668;
  let x_671 : bool = u_xlatb0.z;
  if (x_671) {
    let x_676 : f32 = u_xlat1.z;
    x_672 = x_676;
  } else {
    let x_679 : f32 = u_xlat2.z;
    x_672 = x_679;
  }
  let x_680 : f32 = x_672;
  SV_Target0.z = x_680;
  let x_683 : f32 = u_xlat0.w;
  SV_Target0.w = x_683;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

