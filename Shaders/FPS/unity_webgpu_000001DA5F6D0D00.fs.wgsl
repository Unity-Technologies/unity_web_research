struct PGlobals {
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
  x_Dithering_Coords : vec4<f32>,
  x_Lut3D_Params : vec2<f32>,
  x_PostExposure : f32,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> u_xlat8 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_25 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlatb5 : bool;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : f32;

var<private> u_xlat9 : f32;

var<private> u_xlat13 : f32;

var<private> u_xlat6 : f32;

var<private> u_xlat10 : f32;

var<private> u_xlatb14 : bool;

var<private> u_xlatb1 : bool;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

@group(0) @binding(4) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(8) var sampler_Lut3D : sampler;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_DitheringTex : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_226 : f32;
  var x_472 : f32;
  var x_484 : f32;
  var x_497 : f32;
  var x_554 : f32;
  var x_567 : f32;
  var x_579 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD1;
  let x_16 : vec2<f32> = (x_13 + vec2<f32>(-0.5f, -0.5f));
  let x_17 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_16.x, x_16.y, x_17.z, x_17.w);
  let x_21 : vec4<f32> = u_xlat0;
  let x_30 : vec4<f32> = x_25.x_Distortion_Amount;
  u_xlat8 = ((vec2<f32>(x_21.x, x_21.y) * vec2<f32>(x_30.z, x_30.z)) + vec2<f32>(0.5f, 0.5f));
  let x_36 : vec4<f32> = u_xlat0;
  let x_39 : vec4<f32> = x_25.x_Distortion_Amount;
  let x_44 : vec4<f32> = x_25.x_Distortion_CenterScale;
  let x_47 : vec2<f32> = ((vec2<f32>(x_36.x, x_36.y) * vec2<f32>(x_39.z, x_39.z)) + -(vec2<f32>(x_44.x, x_44.y)));
  let x_48 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_47.x, x_47.y, x_48.z, x_48.w);
  let x_50 : vec4<f32> = u_xlat0;
  let x_53 : vec4<f32> = x_25.x_Distortion_CenterScale;
  let x_55 : vec2<f32> = (vec2<f32>(x_50.x, x_50.y) * vec2<f32>(x_53.z, x_53.w));
  let x_56 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_55.x, x_55.y, x_56.z, x_56.w);
  let x_59 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_59.x, x_59.y), vec2<f32>(x_61.x, x_61.y));
  let x_69 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_69);
  let x_79 : f32 = x_25.x_Distortion_Amount.w;
  u_xlatb5 = (0.0f < x_79);
  let x_81 : bool = u_xlatb5;
  if (x_81) {
    let x_87 : vec4<f32> = u_xlat1;
    let x_90 : vec4<f32> = x_25.x_Distortion_Amount;
    let x_92 : vec2<f32> = (vec2<f32>(x_87.x, x_87.x) * vec2<f32>(x_90.x, x_90.y));
    let x_93 : vec3<f32> = u_xlat5;
    u_xlat5 = vec3<f32>(x_92.x, x_92.y, x_93.z);
    let x_97 : f32 = u_xlat5.x;
    u_xlat2.x = sin(x_97);
    let x_102 : f32 = u_xlat5.x;
    u_xlat3 = cos(x_102);
    let x_105 : f32 = u_xlat2.x;
    let x_106 : f32 = u_xlat3;
    u_xlat5.x = (x_105 / x_106);
    let x_113 : f32 = u_xlat5.y;
    u_xlat9 = (1.0f / x_113);
    let x_116 : f32 = u_xlat5.x;
    let x_117 : f32 = u_xlat9;
    u_xlat5.x = ((x_116 * x_117) + -1.0f);
    let x_122 : vec4<f32> = u_xlat0;
    let x_124 : vec3<f32> = u_xlat5;
    let x_127 : vec2<f32> = u_xlat8;
    let x_128 : vec2<f32> = ((vec2<f32>(x_122.x, x_122.y) * vec2<f32>(x_124.x, x_124.x)) + x_127);
    let x_129 : vec3<f32> = u_xlat5;
    u_xlat5 = vec3<f32>(x_128.x, x_128.y, x_129.z);
  } else {
    let x_134 : f32 = u_xlat1.x;
    u_xlat13 = (1.0f / x_134);
    let x_136 : f32 = u_xlat13;
    let x_138 : f32 = x_25.x_Distortion_Amount.x;
    u_xlat13 = (x_136 * x_138);
    let x_141 : f32 = u_xlat1.x;
    let x_143 : f32 = x_25.x_Distortion_Amount.y;
    u_xlat1.x = (x_141 * x_143);
    let x_147 : f32 = u_xlat1.x;
    u_xlat2.x = min(abs(x_147), 1.0f);
    let x_153 : f32 = u_xlat1.x;
    u_xlat6 = max(abs(x_153), 1.0f);
    let x_156 : f32 = u_xlat6;
    u_xlat6 = (1.0f / x_156);
    let x_158 : f32 = u_xlat6;
    let x_160 : f32 = u_xlat2.x;
    u_xlat2.x = (x_158 * x_160);
    let x_164 : f32 = u_xlat2.x;
    let x_166 : f32 = u_xlat2.x;
    u_xlat6 = (x_164 * x_166);
    let x_169 : f32 = u_xlat6;
    u_xlat10 = ((x_169 * 0.0208351f) + -0.085133001f);
    let x_174 : f32 = u_xlat6;
    let x_175 : f32 = u_xlat10;
    u_xlat10 = ((x_174 * x_175) + 0.180141002f);
    let x_179 : f32 = u_xlat6;
    let x_180 : f32 = u_xlat10;
    u_xlat10 = ((x_179 * x_180) + -0.330299497f);
    let x_184 : f32 = u_xlat6;
    let x_185 : f32 = u_xlat10;
    u_xlat6 = ((x_184 * x_185) + 0.999866009f);
    let x_189 : f32 = u_xlat6;
    let x_191 : f32 = u_xlat2.x;
    u_xlat10 = (x_189 * x_191);
    let x_195 : f32 = u_xlat1.x;
    u_xlatb14 = (1.0f < abs(x_195));
    let x_198 : f32 = u_xlat10;
    u_xlat10 = ((x_198 * -2.0f) + 1.570796371f);
    let x_203 : bool = u_xlatb14;
    let x_204 : f32 = u_xlat10;
    u_xlat10 = select(0.0f, x_204, x_203);
    let x_207 : f32 = u_xlat2.x;
    let x_208 : f32 = u_xlat6;
    let x_210 : f32 = u_xlat10;
    u_xlat2.x = ((x_207 * x_208) + x_210);
    let x_214 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_214, 1.0f);
    let x_219 : f32 = u_xlat1.x;
    let x_221 : f32 = u_xlat1.x;
    u_xlatb1 = (x_219 < -(x_221));
    let x_224 : bool = u_xlatb1;
    if (x_224) {
      let x_230 : f32 = u_xlat2.x;
      x_226 = -(x_230);
    } else {
      let x_234 : f32 = u_xlat2.x;
      x_226 = x_234;
    }
    let x_235 : f32 = x_226;
    u_xlat1.x = x_235;
    let x_237 : f32 = u_xlat13;
    let x_239 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_237 * x_239) + -1.0f);
    let x_243 : vec4<f32> = u_xlat0;
    let x_245 : vec4<f32> = u_xlat1;
    let x_248 : vec2<f32> = u_xlat8;
    let x_249 : vec2<f32> = ((vec2<f32>(x_243.x, x_243.y) * vec2<f32>(x_245.x, x_245.x)) + x_248);
    let x_250 : vec3<f32> = u_xlat5;
    u_xlat5 = vec3<f32>(x_249.x, x_249.y, x_250.z);
  }
  let x_263 : vec2<f32> = vs_TEXCOORD0;
  let x_264 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_263);
  u_xlat0.x = x_264.x;
  let x_272 : vec3<f32> = u_xlat5;
  let x_274 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_272.x, x_272.y));
  u_xlat1 = x_274;
  let x_275 : vec4<f32> = u_xlat0;
  let x_277 : vec4<f32> = u_xlat1;
  let x_279 : vec3<f32> = (vec3<f32>(x_275.x, x_275.x, x_275.x) * vec3<f32>(x_277.x, x_277.y, x_277.z));
  let x_280 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_279.x, x_279.y, x_279.z, x_280.w);
  let x_282 : vec4<f32> = u_xlat1;
  let x_285 : f32 = x_25.x_PostExposure;
  let x_287 : f32 = x_25.x_PostExposure;
  let x_289 : f32 = x_25.x_PostExposure;
  let x_291 : f32 = x_25.x_PostExposure;
  let x_292 : vec4<f32> = vec4<f32>(x_285, x_287, x_289, x_291);
  u_xlat0 = (x_282 * vec4<f32>(x_292.x, x_292.y, x_292.z, x_292.w));
  let x_299 : vec4<f32> = u_xlat0;
  let x_306 : vec3<f32> = ((vec3<f32>(x_299.x, x_299.y, x_299.z) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_307 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_306.x, x_306.y, x_306.z, x_307.w);
  let x_309 : vec4<f32> = u_xlat0;
  let x_311 : vec3<f32> = log2(vec3<f32>(x_309.x, x_309.y, x_309.z));
  let x_312 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_311.x, x_311.y, x_311.z, x_312.w);
  let x_314 : vec4<f32> = u_xlat0;
  let x_321 : vec3<f32> = ((vec3<f32>(x_314.x, x_314.y, x_314.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_322 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
  let x_324 : vec4<f32> = u_xlat0;
  let x_328 : vec3<f32> = clamp(vec3<f32>(x_324.x, x_324.y, x_324.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_329 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_328.x, x_328.y, x_328.z, x_329.w);
  let x_331 : vec4<f32> = u_xlat0;
  let x_336 : vec2<f32> = x_25.x_Lut3D_Params;
  let x_338 : vec3<f32> = (vec3<f32>(x_331.x, x_331.y, x_331.z) * vec3<f32>(x_336.y, x_336.y, x_336.y));
  let x_339 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_338.x, x_338.y, x_338.z, x_339.w);
  let x_342 : f32 = x_25.x_Lut3D_Params.x;
  u_xlat1.x = (x_342 * 0.5f);
  let x_345 : vec4<f32> = u_xlat0;
  let x_348 : vec2<f32> = x_25.x_Lut3D_Params;
  let x_351 : vec4<f32> = u_xlat1;
  let x_353 : vec3<f32> = ((vec3<f32>(x_345.x, x_345.y, x_345.z) * vec3<f32>(x_348.x, x_348.x, x_348.x)) + vec3<f32>(x_351.x, x_351.x, x_351.x));
  let x_354 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_353.x, x_353.y, x_353.z, x_354.w);
  let x_364 : vec4<f32> = u_xlat0;
  let x_366 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_364.x, x_364.y, x_364.z));
  let x_367 : vec3<f32> = vec3<f32>(x_366.x, x_366.y, x_366.z);
  let x_368 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_367.x, x_367.y, x_367.z, x_368.w);
  let x_370 : vec2<f32> = vs_TEXCOORD0;
  let x_373 : vec4<f32> = x_25.x_Dithering_Coords;
  let x_377 : vec4<f32> = x_25.x_Dithering_Coords;
  let x_379 : vec2<f32> = ((x_370 * vec2<f32>(x_373.x, x_373.y)) + vec2<f32>(x_377.z, x_377.w));
  let x_380 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_379.x, x_379.y, x_380.z, x_380.w);
  let x_387 : vec4<f32> = u_xlat1;
  let x_389 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_387.x, x_387.y));
  u_xlat1.x = x_389.w;
  let x_393 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_393 * 2.0f) + -1.0f);
  let x_399 : f32 = u_xlat1.x;
  u_xlat5.x = ((x_399 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_405 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_405, 0.0f, 1.0f);
  let x_409 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_409 * 2.0f) + -1.0f);
  let x_414 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_414)) + 1.0f);
  let x_420 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_420);
  let x_424 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_424) + 1.0f);
  let x_429 : f32 = u_xlat1.x;
  let x_431 : f32 = u_xlat5.x;
  u_xlat1.x = (x_429 * x_431);
  let x_434 : vec4<f32> = u_xlat0;
  u_xlat5 = (vec3<f32>(x_434.x, x_434.y, x_434.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_439 : vec4<f32> = u_xlat0;
  u_xlat2 = max(abs(vec3<f32>(x_439.x, x_439.y, x_439.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_445 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_445);
  let x_447 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_447 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_451 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_451);
  let x_453 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_453 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_465 : vec4<f32> = u_xlat0;
  let x_468 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_465.x, x_465.y, x_465.z, x_465.x));
  u_xlatb0 = vec3<bool>(x_468.x, x_468.y, x_468.z);
  let x_471 : bool = u_xlatb0.x;
  if (x_471) {
    let x_476 : f32 = u_xlat5.x;
    x_472 = x_476;
  } else {
    let x_479 : f32 = u_xlat2.x;
    x_472 = x_479;
  }
  let x_480 : f32 = x_472;
  u_xlat0.x = x_480;
  let x_483 : bool = u_xlatb0.y;
  if (x_483) {
    let x_488 : f32 = u_xlat5.y;
    x_484 = x_488;
  } else {
    let x_491 : f32 = u_xlat2.y;
    x_484 = x_491;
  }
  let x_492 : f32 = x_484;
  u_xlat0.y = x_492;
  let x_496 : bool = u_xlatb0.z;
  if (x_496) {
    let x_501 : f32 = u_xlat5.z;
    x_497 = x_501;
  } else {
    let x_504 : f32 = u_xlat2.z;
    x_497 = x_504;
  }
  let x_505 : f32 = x_497;
  u_xlat0.z = x_505;
  let x_507 : vec4<f32> = u_xlat1;
  let x_512 : vec4<f32> = u_xlat0;
  let x_514 : vec3<f32> = ((vec3<f32>(x_507.x, x_507.x, x_507.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_512.x, x_512.y, x_512.z));
  let x_515 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_514.x, x_514.y, x_514.z, x_515.w);
  let x_517 : vec4<f32> = u_xlat0;
  let x_521 : vec3<f32> = (vec3<f32>(x_517.x, x_517.y, x_517.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_522 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_521.x, x_521.y, x_521.z, x_522.w);
  let x_524 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_524.x, x_524.y, x_524.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_529 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_529 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_533 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_533), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_536 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_536);
  let x_538 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_538 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_542 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_542);
  let x_546 : vec4<f32> = u_xlat0;
  let x_548 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_546.x, x_546.y, x_546.z, x_546.x));
  u_xlatb0 = vec3<bool>(x_548.x, x_548.y, x_548.z);
  let x_553 : bool = u_xlatb0.x;
  if (x_553) {
    let x_558 : f32 = u_xlat1.x;
    x_554 = x_558;
  } else {
    let x_561 : f32 = u_xlat2.x;
    x_554 = x_561;
  }
  let x_562 : f32 = x_554;
  SV_Target0.x = x_562;
  let x_566 : bool = u_xlatb0.y;
  if (x_566) {
    let x_571 : f32 = u_xlat1.y;
    x_567 = x_571;
  } else {
    let x_574 : f32 = u_xlat2.y;
    x_567 = x_574;
  }
  let x_575 : f32 = x_567;
  SV_Target0.y = x_575;
  let x_578 : bool = u_xlatb0.z;
  if (x_578) {
    let x_583 : f32 = u_xlat1.z;
    x_579 = x_583;
  } else {
    let x_586 : f32 = u_xlat2.z;
    x_579 = x_586;
  }
  let x_587 : f32 = x_579;
  SV_Target0.z = x_587;
  let x_590 : f32 = u_xlat0.w;
  SV_Target0.w = x_590;
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

