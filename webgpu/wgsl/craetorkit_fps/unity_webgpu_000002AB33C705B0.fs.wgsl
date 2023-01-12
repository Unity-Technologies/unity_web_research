struct PGlobals {
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
  x_Dithering_Coords : vec4<f32>,
  x_Lut2D_Params : vec3<f32>,
  @size(4)
  padding : u32,
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding_1 : u32,
  x_Grain_Params2 : vec4<f32>,
}

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

@group(0) @binding(4) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_GrainTex : sampler;

@group(0) @binding(3) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(8) var sampler_Lut2D : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_DitheringTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat8 : vec2<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb5 : bool;
  var u_xlat5 : vec2<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec2<f32>;
  var u_xlat9 : f32;
  var u_xlat13 : f32;
  var u_xlat6 : f32;
  var u_xlat10 : f32;
  var u_xlatb14 : bool;
  var u_xlatb1 : bool;
  var x_223 : f32;
  var u_xlat12 : f32;
  var u_xlatb0 : vec3<bool>;
  var x_390 : f32;
  var x_402 : f32;
  var x_415 : f32;
  var u_xlat4 : vec3<f32>;
  var x_542 : f32;
  var x_554 : f32;
  var x_566 : f32;
  var x_650 : f32;
  var x_662 : f32;
  var x_674 : f32;
  var x_716 : f32;
  var x_729 : f32;
  var x_741 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD1;
  let x_16 : vec2<f32> = (x_13 + vec2<f32>(-0.5f, -0.5f));
  let x_17 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_16.x, x_16.y, x_17.z);
  let x_21 : vec3<f32> = u_xlat0;
  let x_31 : vec4<f32> = x_26.x_Distortion_Amount;
  u_xlat8 = ((vec2<f32>(x_21.x, x_21.y) * vec2<f32>(x_31.z, x_31.z)) + vec2<f32>(0.5f, 0.5f));
  let x_37 : vec3<f32> = u_xlat0;
  let x_40 : vec4<f32> = x_26.x_Distortion_Amount;
  let x_45 : vec4<f32> = x_26.x_Distortion_CenterScale;
  let x_48 : vec2<f32> = ((vec2<f32>(x_37.x, x_37.y) * vec2<f32>(x_40.z, x_40.z)) + -(vec2<f32>(x_45.x, x_45.y)));
  let x_49 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_48.x, x_48.y, x_49.z);
  let x_51 : vec3<f32> = u_xlat0;
  let x_54 : vec4<f32> = x_26.x_Distortion_CenterScale;
  let x_56 : vec2<f32> = (vec2<f32>(x_51.x, x_51.y) * vec2<f32>(x_54.z, x_54.w));
  let x_57 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_56.x, x_56.y, x_57.z);
  let x_61 : vec3<f32> = u_xlat0;
  let x_63 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_61.x, x_61.y), vec2<f32>(x_63.x, x_63.y));
  let x_71 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_71);
  let x_81 : f32 = x_26.x_Distortion_Amount.w;
  u_xlatb5 = (0.0f < x_81);
  let x_83 : bool = u_xlatb5;
  if (x_83) {
    let x_87 : vec4<f32> = u_xlat1;
    let x_90 : vec4<f32> = x_26.x_Distortion_Amount;
    u_xlat5 = (vec2<f32>(x_87.x, x_87.x) * vec2<f32>(x_90.x, x_90.y));
    let x_95 : f32 = u_xlat5.x;
    u_xlat2.x = sin(x_95);
    let x_100 : f32 = u_xlat5.x;
    u_xlat3.x = cos(x_100);
    let x_104 : f32 = u_xlat2.x;
    let x_106 : f32 = u_xlat3.x;
    u_xlat5.x = (x_104 / x_106);
    let x_113 : f32 = u_xlat5.y;
    u_xlat9 = (1.0f / x_113);
    let x_116 : f32 = u_xlat5.x;
    let x_117 : f32 = u_xlat9;
    u_xlat5.x = ((x_116 * x_117) + -1.0f);
    let x_122 : vec3<f32> = u_xlat0;
    let x_124 : vec2<f32> = u_xlat5;
    let x_127 : vec2<f32> = u_xlat8;
    u_xlat5 = ((vec2<f32>(x_122.x, x_122.y) * vec2<f32>(x_124.x, x_124.x)) + x_127);
  } else {
    let x_132 : f32 = u_xlat1.x;
    u_xlat13 = (1.0f / x_132);
    let x_134 : f32 = u_xlat13;
    let x_136 : f32 = x_26.x_Distortion_Amount.x;
    u_xlat13 = (x_134 * x_136);
    let x_139 : f32 = u_xlat1.x;
    let x_141 : f32 = x_26.x_Distortion_Amount.y;
    u_xlat1.x = (x_139 * x_141);
    let x_145 : f32 = u_xlat1.x;
    u_xlat2.x = min(abs(x_145), 1.0f);
    let x_151 : f32 = u_xlat1.x;
    u_xlat6 = max(abs(x_151), 1.0f);
    let x_154 : f32 = u_xlat6;
    u_xlat6 = (1.0f / x_154);
    let x_156 : f32 = u_xlat6;
    let x_158 : f32 = u_xlat2.x;
    u_xlat2.x = (x_156 * x_158);
    let x_162 : f32 = u_xlat2.x;
    let x_164 : f32 = u_xlat2.x;
    u_xlat6 = (x_162 * x_164);
    let x_167 : f32 = u_xlat6;
    u_xlat10 = ((x_167 * 0.0208351f) + -0.085133001f);
    let x_172 : f32 = u_xlat6;
    let x_173 : f32 = u_xlat10;
    u_xlat10 = ((x_172 * x_173) + 0.180141002f);
    let x_177 : f32 = u_xlat6;
    let x_178 : f32 = u_xlat10;
    u_xlat10 = ((x_177 * x_178) + -0.330299497f);
    let x_182 : f32 = u_xlat6;
    let x_183 : f32 = u_xlat10;
    u_xlat6 = ((x_182 * x_183) + 0.999866009f);
    let x_187 : f32 = u_xlat6;
    let x_189 : f32 = u_xlat2.x;
    u_xlat10 = (x_187 * x_189);
    let x_193 : f32 = u_xlat1.x;
    u_xlatb14 = (1.0f < abs(x_193));
    let x_196 : f32 = u_xlat10;
    u_xlat10 = ((x_196 * -2.0f) + 1.570796371f);
    let x_201 : bool = u_xlatb14;
    let x_202 : f32 = u_xlat10;
    u_xlat10 = select(0.0f, x_202, x_201);
    let x_205 : f32 = u_xlat2.x;
    let x_206 : f32 = u_xlat6;
    let x_208 : f32 = u_xlat10;
    u_xlat2.x = ((x_205 * x_206) + x_208);
    let x_212 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_212, 1.0f);
    let x_217 : f32 = u_xlat1.x;
    let x_219 : f32 = u_xlat1.x;
    u_xlatb1 = (x_217 < -(x_219));
    let x_222 : bool = u_xlatb1;
    if (x_222) {
      let x_227 : f32 = u_xlat2.x;
      x_223 = -(x_227);
    } else {
      let x_231 : f32 = u_xlat2.x;
      x_223 = x_231;
    }
    let x_232 : f32 = x_223;
    u_xlat1.x = x_232;
    let x_234 : f32 = u_xlat13;
    let x_236 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_234 * x_236) + -1.0f);
    let x_240 : vec3<f32> = u_xlat0;
    let x_242 : vec4<f32> = u_xlat1;
    let x_245 : vec2<f32> = u_xlat8;
    u_xlat5 = ((vec2<f32>(x_240.x, x_240.y) * vec2<f32>(x_242.x, x_242.x)) + x_245);
  }
  let x_258 : vec2<f32> = vs_TEXCOORD0;
  let x_259 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_258);
  u_xlat0.x = x_259.x;
  let x_267 : vec2<f32> = u_xlat5;
  let x_268 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_267);
  u_xlat1 = x_268;
  let x_269 : vec3<f32> = u_xlat0;
  let x_271 : vec4<f32> = u_xlat1;
  u_xlat0 = (vec3<f32>(x_269.x, x_269.x, x_269.x) * vec3<f32>(x_271.x, x_271.y, x_271.z));
  let x_274 : vec2<f32> = vs_TEXCOORD1;
  let x_277 : vec4<f32> = x_26.x_Grain_Params2;
  let x_281 : vec4<f32> = x_26.x_Grain_Params2;
  let x_283 : vec2<f32> = ((x_274 * vec2<f32>(x_277.x, x_277.y)) + vec2<f32>(x_281.z, x_281.w));
  let x_284 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_283.x, x_283.y, x_284.z, x_284.w);
  let x_291 : vec4<f32> = u_xlat1;
  let x_293 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_291.x, x_291.y));
  let x_294 : vec3<f32> = vec3<f32>(x_293.x, x_293.y, x_293.z);
  let x_295 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_294.x, x_294.y, x_294.z, x_295.w);
  let x_297 : vec3<f32> = u_xlat0;
  u_xlat2 = x_297;
  let x_298 : vec3<f32> = u_xlat2;
  u_xlat2 = clamp(x_298, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_303 : vec3<f32> = u_xlat2;
  u_xlat12 = dot(x_303, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_309 : f32 = u_xlat12;
  u_xlat12 = sqrt(x_309);
  let x_313 : f32 = x_26.x_Grain_Params1.x;
  let x_314 : f32 = u_xlat12;
  u_xlat12 = ((x_313 * -(x_314)) + 1.0f);
  let x_318 : vec3<f32> = u_xlat0;
  let x_319 : vec4<f32> = u_xlat1;
  let x_321 : vec3<f32> = (x_318 * vec3<f32>(x_319.x, x_319.y, x_319.z));
  let x_322 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
  let x_324 : vec4<f32> = u_xlat1;
  let x_327 : f32 = x_26.x_Grain_Params1.y;
  let x_329 : f32 = x_26.x_Grain_Params1.y;
  let x_331 : f32 = x_26.x_Grain_Params1.y;
  let x_333 : vec3<f32> = (vec3<f32>(x_324.x, x_324.y, x_324.z) * vec3<f32>(x_327, x_329, x_331));
  let x_334 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_336 : vec4<f32> = u_xlat1;
  let x_338 : f32 = u_xlat12;
  let x_341 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_336.x, x_336.y, x_336.z) * vec3<f32>(x_338, x_338, x_338)) + x_341);
  let x_343 : vec3<f32> = u_xlat0;
  u_xlat0 = clamp(x_343, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_348 : f32 = u_xlat1.w;
  u_xlat13 = x_348;
  let x_349 : f32 = u_xlat13;
  u_xlat13 = clamp(x_349, 0.0f, 1.0f);
  let x_351 : vec3<f32> = u_xlat0;
  let x_355 : vec3<f32> = (vec3<f32>(x_351.z, x_351.x, x_351.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_356 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_355.x, x_355.y, x_355.z, x_356.w);
  let x_358 : vec3<f32> = u_xlat0;
  u_xlat2 = max(vec3<f32>(x_358.z, x_358.x, x_358.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_363 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_363);
  let x_365 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_365 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_369 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_369);
  let x_371 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_371 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_383 : vec3<f32> = u_xlat0;
  let x_386 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_383.z, x_383.x, x_383.y, x_383.z));
  u_xlatb0 = vec3<bool>(x_386.x, x_386.y, x_386.z);
  let x_389 : bool = u_xlatb0.x;
  if (x_389) {
    let x_394 : f32 = u_xlat1.x;
    x_390 = x_394;
  } else {
    let x_397 : f32 = u_xlat2.x;
    x_390 = x_397;
  }
  let x_398 : f32 = x_390;
  u_xlat0.x = x_398;
  let x_401 : bool = u_xlatb0.y;
  if (x_401) {
    let x_406 : f32 = u_xlat1.y;
    x_402 = x_406;
  } else {
    let x_409 : f32 = u_xlat2.y;
    x_402 = x_409;
  }
  let x_410 : f32 = x_402;
  u_xlat0.y = x_410;
  let x_414 : bool = u_xlatb0.z;
  if (x_414) {
    let x_419 : f32 = u_xlat1.z;
    x_415 = x_419;
  } else {
    let x_422 : f32 = u_xlat2.z;
    x_415 = x_422;
  }
  let x_423 : f32 = x_415;
  u_xlat0.z = x_423;
  let x_426 : vec3<f32> = u_xlat0;
  let x_430 : vec3<f32> = x_26.x_Lut2D_Params;
  u_xlat4 = (x_426 * vec3<f32>(x_430.z, x_430.z, x_430.z));
  let x_434 : f32 = u_xlat4.x;
  u_xlat4.x = floor(x_434);
  let x_438 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_440 : vec2<f32> = (vec2<f32>(x_438.x, x_438.y) * vec2<f32>(0.5f, 0.5f));
  let x_441 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_440.x, x_440.y, x_441.z, x_441.w);
  let x_443 : vec3<f32> = u_xlat4;
  let x_446 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_449 : vec4<f32> = u_xlat1;
  let x_451 : vec2<f32> = ((vec2<f32>(x_443.y, x_443.z) * vec2<f32>(x_446.x, x_446.y)) + vec2<f32>(x_449.x, x_449.y));
  let x_452 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_452.x, x_451.x, x_451.y, x_452.w);
  let x_455 : f32 = u_xlat4.x;
  let x_457 : f32 = x_26.x_Lut2D_Params.y;
  let x_460 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_455 * x_457) + x_460);
  let x_468 : vec4<f32> = u_xlat1;
  let x_470 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_468.x, x_468.z));
  u_xlat2 = vec3<f32>(x_470.x, x_470.y, x_470.z);
  let x_473 : f32 = x_26.x_Lut2D_Params.y;
  u_xlat3.x = x_473;
  u_xlat3.y = 0.0f;
  let x_476 : vec4<f32> = u_xlat1;
  let x_478 : vec2<f32> = u_xlat3;
  u_xlat8 = (vec2<f32>(x_476.x, x_476.z) + x_478);
  let x_483 : vec2<f32> = u_xlat8;
  let x_484 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_483);
  let x_485 : vec3<f32> = vec3<f32>(x_484.x, x_484.y, x_484.z);
  let x_486 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_485.x, x_485.y, x_485.z, x_486.w);
  let x_489 : f32 = u_xlat0.x;
  let x_491 : f32 = x_26.x_Lut2D_Params.z;
  let x_494 : f32 = u_xlat4.x;
  u_xlat0.x = ((x_489 * x_491) + -(x_494));
  let x_498 : vec3<f32> = u_xlat2;
  let x_500 : vec4<f32> = u_xlat1;
  u_xlat4 = (-(x_498) + vec3<f32>(x_500.x, x_500.y, x_500.z));
  let x_503 : vec3<f32> = u_xlat0;
  let x_505 : vec3<f32> = u_xlat4;
  let x_507 : vec3<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_503.x, x_503.x, x_503.x) * x_505) + x_507);
  let x_509 : vec3<f32> = u_xlat0;
  let x_512 : vec3<f32> = (x_509 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_513 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_512.x, x_512.y, x_512.z, x_513.w);
  let x_515 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_515 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_519 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_519 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_523 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_523), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_526 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_526);
  let x_528 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_528 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_532 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_532);
  let x_536 : vec3<f32> = u_xlat0;
  let x_538 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_536.x, x_536.y, x_536.z, x_536.x));
  u_xlatb0 = vec3<bool>(x_538.x, x_538.y, x_538.z);
  let x_541 : bool = u_xlatb0.x;
  if (x_541) {
    let x_546 : f32 = u_xlat1.x;
    x_542 = x_546;
  } else {
    let x_549 : f32 = u_xlat2.x;
    x_542 = x_549;
  }
  let x_550 : f32 = x_542;
  u_xlat0.x = x_550;
  let x_553 : bool = u_xlatb0.y;
  if (x_553) {
    let x_558 : f32 = u_xlat1.y;
    x_554 = x_558;
  } else {
    let x_561 : f32 = u_xlat2.y;
    x_554 = x_561;
  }
  let x_562 : f32 = x_554;
  u_xlat0.y = x_562;
  let x_565 : bool = u_xlatb0.z;
  if (x_565) {
    let x_570 : f32 = u_xlat1.z;
    x_566 = x_570;
  } else {
    let x_573 : f32 = u_xlat2.z;
    x_566 = x_573;
  }
  let x_574 : f32 = x_566;
  u_xlat0.z = x_574;
  let x_576 : vec2<f32> = vs_TEXCOORD0;
  let x_579 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_583 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_585 : vec2<f32> = ((x_576 * vec2<f32>(x_579.x, x_579.y)) + vec2<f32>(x_583.z, x_583.w));
  let x_586 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_585.x, x_585.y, x_586.z, x_586.w);
  let x_593 : vec4<f32> = u_xlat1;
  let x_595 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_593.x, x_593.y));
  u_xlat12 = x_595.w;
  let x_597 : f32 = u_xlat12;
  u_xlat12 = ((x_597 * 2.0f) + -1.0f);
  let x_601 : f32 = u_xlat12;
  u_xlat1.x = ((x_601 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_607 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_607, 0.0f, 1.0f);
  let x_611 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_611 * 2.0f) + -1.0f);
  let x_615 : f32 = u_xlat12;
  u_xlat12 = (-(abs(x_615)) + 1.0f);
  let x_619 : f32 = u_xlat12;
  u_xlat12 = sqrt(x_619);
  let x_621 : f32 = u_xlat12;
  u_xlat12 = (-(x_621) + 1.0f);
  let x_624 : f32 = u_xlat12;
  let x_626 : f32 = u_xlat1.x;
  u_xlat12 = (x_624 * x_626);
  let x_628 : vec3<f32> = u_xlat0;
  let x_629 : vec3<f32> = (x_628 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_630 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_629.x, x_629.y, x_629.z, x_630.w);
  let x_632 : vec3<f32> = u_xlat0;
  u_xlat2 = max(abs(x_632), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_635 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_635);
  let x_637 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_637 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_639 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_639);
  let x_641 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_641 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_644 : vec3<f32> = u_xlat0;
  let x_646 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_644.x, x_644.y, x_644.z, x_644.x));
  u_xlatb0 = vec3<bool>(x_646.x, x_646.y, x_646.z);
  let x_649 : bool = u_xlatb0.x;
  if (x_649) {
    let x_654 : f32 = u_xlat1.x;
    x_650 = x_654;
  } else {
    let x_657 : f32 = u_xlat2.x;
    x_650 = x_657;
  }
  let x_658 : f32 = x_650;
  u_xlat0.x = x_658;
  let x_661 : bool = u_xlatb0.y;
  if (x_661) {
    let x_666 : f32 = u_xlat1.y;
    x_662 = x_666;
  } else {
    let x_669 : f32 = u_xlat2.y;
    x_662 = x_669;
  }
  let x_670 : f32 = x_662;
  u_xlat0.y = x_670;
  let x_673 : bool = u_xlatb0.z;
  if (x_673) {
    let x_678 : f32 = u_xlat1.z;
    x_674 = x_678;
  } else {
    let x_681 : f32 = u_xlat2.z;
    x_674 = x_681;
  }
  let x_682 : f32 = x_674;
  u_xlat0.z = x_682;
  let x_684 : f32 = u_xlat12;
  let x_689 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_684, x_684, x_684) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_689);
  let x_691 : vec3<f32> = u_xlat0;
  let x_692 : vec3<f32> = (x_691 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_693 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_692.x, x_692.y, x_692.z, x_693.w);
  let x_695 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_695 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_697 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_697 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_699 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_699), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_702 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_702);
  let x_704 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_704 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_706 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_706);
  let x_708 : vec3<f32> = u_xlat0;
  let x_710 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_708.x, x_708.y, x_708.z, x_708.x));
  u_xlatb0 = vec3<bool>(x_710.x, x_710.y, x_710.z);
  let x_715 : bool = u_xlatb0.x;
  if (x_715) {
    let x_720 : f32 = u_xlat1.x;
    x_716 = x_720;
  } else {
    let x_723 : f32 = u_xlat2.x;
    x_716 = x_723;
  }
  let x_724 : f32 = x_716;
  SV_Target0.x = x_724;
  let x_728 : bool = u_xlatb0.y;
  if (x_728) {
    let x_733 : f32 = u_xlat1.y;
    x_729 = x_733;
  } else {
    let x_736 : f32 = u_xlat2.y;
    x_729 = x_736;
  }
  let x_737 : f32 = x_729;
  SV_Target0.y = x_737;
  let x_740 : bool = u_xlatb0.z;
  if (x_740) {
    let x_745 : f32 = u_xlat1.z;
    x_741 = x_745;
  } else {
    let x_748 : f32 = u_xlat2.z;
    x_741 = x_748;
  }
  let x_749 : f32 = x_741;
  SV_Target0.z = x_749;
  let x_751 : f32 = u_xlat13;
  SV_Target0.w = x_751;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec2<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

