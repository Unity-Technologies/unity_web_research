struct PGlobals {
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
  x_Dithering_Coords : vec4<f32>,
  x_Lut3D_Params : vec2<f32>,
  x_PostExposure : f32,
  @size(4)
  padding : u32,
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding_1 : u32,
  x_Grain_Params2 : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> u_xlat8 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_25 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlatb5 : bool;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat9 : f32;

var<private> u_xlat13 : f32;

var<private> u_xlat6 : f32;

var<private> u_xlat10 : f32;

var<private> u_xlatb14 : bool;

var<private> u_xlatb1 : bool;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

@group(0) @binding(5) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_GrainTex : sampler;

var<private> u_xlat12 : f32;

@group(0) @binding(4) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(9) var sampler_Lut3D : sampler;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_DitheringTex : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_228 : f32;
  var x_539 : f32;
  var x_551 : f32;
  var x_564 : f32;
  var x_621 : f32;
  var x_634 : f32;
  var x_646 : f32;
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
    u_xlat3.x = cos(x_102);
    let x_106 : f32 = u_xlat2.x;
    let x_108 : f32 = u_xlat3.x;
    u_xlat5.x = (x_106 / x_108);
    let x_115 : f32 = u_xlat5.y;
    u_xlat9 = (1.0f / x_115);
    let x_118 : f32 = u_xlat5.x;
    let x_119 : f32 = u_xlat9;
    u_xlat5.x = ((x_118 * x_119) + -1.0f);
    let x_124 : vec4<f32> = u_xlat0;
    let x_126 : vec3<f32> = u_xlat5;
    let x_129 : vec2<f32> = u_xlat8;
    let x_130 : vec2<f32> = ((vec2<f32>(x_124.x, x_124.y) * vec2<f32>(x_126.x, x_126.x)) + x_129);
    let x_131 : vec3<f32> = u_xlat5;
    u_xlat5 = vec3<f32>(x_130.x, x_130.y, x_131.z);
  } else {
    let x_136 : f32 = u_xlat1.x;
    u_xlat13 = (1.0f / x_136);
    let x_138 : f32 = u_xlat13;
    let x_140 : f32 = x_25.x_Distortion_Amount.x;
    u_xlat13 = (x_138 * x_140);
    let x_143 : f32 = u_xlat1.x;
    let x_145 : f32 = x_25.x_Distortion_Amount.y;
    u_xlat1.x = (x_143 * x_145);
    let x_149 : f32 = u_xlat1.x;
    u_xlat2.x = min(abs(x_149), 1.0f);
    let x_155 : f32 = u_xlat1.x;
    u_xlat6 = max(abs(x_155), 1.0f);
    let x_158 : f32 = u_xlat6;
    u_xlat6 = (1.0f / x_158);
    let x_160 : f32 = u_xlat6;
    let x_162 : f32 = u_xlat2.x;
    u_xlat2.x = (x_160 * x_162);
    let x_166 : f32 = u_xlat2.x;
    let x_168 : f32 = u_xlat2.x;
    u_xlat6 = (x_166 * x_168);
    let x_171 : f32 = u_xlat6;
    u_xlat10 = ((x_171 * 0.0208351f) + -0.085133001f);
    let x_176 : f32 = u_xlat6;
    let x_177 : f32 = u_xlat10;
    u_xlat10 = ((x_176 * x_177) + 0.180141002f);
    let x_181 : f32 = u_xlat6;
    let x_182 : f32 = u_xlat10;
    u_xlat10 = ((x_181 * x_182) + -0.330299497f);
    let x_186 : f32 = u_xlat6;
    let x_187 : f32 = u_xlat10;
    u_xlat6 = ((x_186 * x_187) + 0.999866009f);
    let x_191 : f32 = u_xlat6;
    let x_193 : f32 = u_xlat2.x;
    u_xlat10 = (x_191 * x_193);
    let x_197 : f32 = u_xlat1.x;
    u_xlatb14 = (1.0f < abs(x_197));
    let x_200 : f32 = u_xlat10;
    u_xlat10 = ((x_200 * -2.0f) + 1.570796371f);
    let x_205 : bool = u_xlatb14;
    let x_206 : f32 = u_xlat10;
    u_xlat10 = select(0.0f, x_206, x_205);
    let x_209 : f32 = u_xlat2.x;
    let x_210 : f32 = u_xlat6;
    let x_212 : f32 = u_xlat10;
    u_xlat2.x = ((x_209 * x_210) + x_212);
    let x_216 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_216, 1.0f);
    let x_221 : f32 = u_xlat1.x;
    let x_223 : f32 = u_xlat1.x;
    u_xlatb1 = (x_221 < -(x_223));
    let x_226 : bool = u_xlatb1;
    if (x_226) {
      let x_232 : f32 = u_xlat2.x;
      x_228 = -(x_232);
    } else {
      let x_236 : f32 = u_xlat2.x;
      x_228 = x_236;
    }
    let x_237 : f32 = x_228;
    u_xlat1.x = x_237;
    let x_239 : f32 = u_xlat13;
    let x_241 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_239 * x_241) + -1.0f);
    let x_245 : vec4<f32> = u_xlat0;
    let x_247 : vec4<f32> = u_xlat1;
    let x_250 : vec2<f32> = u_xlat8;
    let x_251 : vec2<f32> = ((vec2<f32>(x_245.x, x_245.y) * vec2<f32>(x_247.x, x_247.x)) + x_250);
    let x_252 : vec3<f32> = u_xlat5;
    u_xlat5 = vec3<f32>(x_251.x, x_251.y, x_252.z);
  }
  let x_265 : vec2<f32> = vs_TEXCOORD0;
  let x_266 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_265);
  u_xlat0.x = x_266.x;
  let x_274 : vec3<f32> = u_xlat5;
  let x_276 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_274.x, x_274.y));
  u_xlat1 = x_276;
  let x_277 : vec4<f32> = u_xlat0;
  let x_279 : vec4<f32> = u_xlat1;
  let x_281 : vec3<f32> = (vec3<f32>(x_277.x, x_277.x, x_277.x) * vec3<f32>(x_279.x, x_279.y, x_279.z));
  let x_282 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_281.x, x_281.y, x_281.z, x_282.w);
  let x_284 : vec2<f32> = vs_TEXCOORD1;
  let x_287 : vec4<f32> = x_25.x_Grain_Params2;
  let x_291 : vec4<f32> = x_25.x_Grain_Params2;
  let x_293 : vec2<f32> = ((x_284 * vec2<f32>(x_287.x, x_287.y)) + vec2<f32>(x_291.z, x_291.w));
  let x_294 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_293.x, x_293.y, x_294.z);
  let x_301 : vec3<f32> = u_xlat2;
  let x_303 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_301.x, x_301.y));
  u_xlat2 = vec3<f32>(x_303.x, x_303.y, x_303.z);
  let x_305 : vec4<f32> = u_xlat0;
  u_xlat3 = vec3<f32>(x_305.x, x_305.y, x_305.z);
  let x_307 : vec3<f32> = u_xlat3;
  u_xlat3 = clamp(x_307, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_312 : vec3<f32> = u_xlat3;
  u_xlat12 = dot(x_312, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_318 : f32 = u_xlat12;
  u_xlat12 = sqrt(x_318);
  let x_322 : f32 = x_25.x_Grain_Params1.x;
  let x_323 : f32 = u_xlat12;
  u_xlat12 = ((x_322 * -(x_323)) + 1.0f);
  let x_327 : vec4<f32> = u_xlat0;
  let x_329 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_327.x, x_327.y, x_327.z) * x_329);
  let x_331 : vec3<f32> = u_xlat2;
  let x_333 : f32 = x_25.x_Grain_Params1.y;
  let x_335 : f32 = x_25.x_Grain_Params1.y;
  let x_337 : f32 = x_25.x_Grain_Params1.y;
  u_xlat2 = (x_331 * vec3<f32>(x_333, x_335, x_337));
  let x_340 : vec3<f32> = u_xlat2;
  let x_341 : f32 = u_xlat12;
  let x_344 : vec4<f32> = u_xlat0;
  let x_346 : vec3<f32> = ((x_340 * vec3<f32>(x_341, x_341, x_341)) + vec3<f32>(x_344.x, x_344.y, x_344.z));
  let x_347 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_346.x, x_346.y, x_346.z, x_347.w);
  let x_349 : vec4<f32> = u_xlat1;
  let x_352 : f32 = x_25.x_PostExposure;
  let x_354 : f32 = x_25.x_PostExposure;
  let x_356 : f32 = x_25.x_PostExposure;
  let x_358 : f32 = x_25.x_PostExposure;
  let x_359 : vec4<f32> = vec4<f32>(x_352, x_354, x_356, x_358);
  u_xlat0 = (x_349 * vec4<f32>(x_359.x, x_359.y, x_359.z, x_359.w));
  let x_366 : vec4<f32> = u_xlat0;
  let x_373 : vec3<f32> = ((vec3<f32>(x_366.x, x_366.y, x_366.z) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_374 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_373.x, x_373.y, x_373.z, x_374.w);
  let x_376 : vec4<f32> = u_xlat0;
  let x_378 : vec3<f32> = log2(vec3<f32>(x_376.x, x_376.y, x_376.z));
  let x_379 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_378.x, x_378.y, x_378.z, x_379.w);
  let x_381 : vec4<f32> = u_xlat0;
  let x_388 : vec3<f32> = ((vec3<f32>(x_381.x, x_381.y, x_381.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_389 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_388.x, x_388.y, x_388.z, x_389.w);
  let x_391 : vec4<f32> = u_xlat0;
  let x_395 : vec3<f32> = clamp(vec3<f32>(x_391.x, x_391.y, x_391.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_396 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_395.x, x_395.y, x_395.z, x_396.w);
  let x_398 : vec4<f32> = u_xlat0;
  let x_403 : vec2<f32> = x_25.x_Lut3D_Params;
  let x_405 : vec3<f32> = (vec3<f32>(x_398.x, x_398.y, x_398.z) * vec3<f32>(x_403.y, x_403.y, x_403.y));
  let x_406 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_405.x, x_405.y, x_405.z, x_406.w);
  let x_409 : f32 = x_25.x_Lut3D_Params.x;
  u_xlat1.x = (x_409 * 0.5f);
  let x_412 : vec4<f32> = u_xlat0;
  let x_415 : vec2<f32> = x_25.x_Lut3D_Params;
  let x_418 : vec4<f32> = u_xlat1;
  let x_420 : vec3<f32> = ((vec3<f32>(x_412.x, x_412.y, x_412.z) * vec3<f32>(x_415.x, x_415.x, x_415.x)) + vec3<f32>(x_418.x, x_418.x, x_418.x));
  let x_421 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_420.x, x_420.y, x_420.z, x_421.w);
  let x_431 : vec4<f32> = u_xlat0;
  let x_433 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_431.x, x_431.y, x_431.z));
  let x_434 : vec3<f32> = vec3<f32>(x_433.x, x_433.y, x_433.z);
  let x_435 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_434.x, x_434.y, x_434.z, x_435.w);
  let x_437 : vec2<f32> = vs_TEXCOORD0;
  let x_440 : vec4<f32> = x_25.x_Dithering_Coords;
  let x_444 : vec4<f32> = x_25.x_Dithering_Coords;
  let x_446 : vec2<f32> = ((x_437 * vec2<f32>(x_440.x, x_440.y)) + vec2<f32>(x_444.z, x_444.w));
  let x_447 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_446.x, x_446.y, x_447.z, x_447.w);
  let x_454 : vec4<f32> = u_xlat1;
  let x_456 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_454.x, x_454.y));
  u_xlat1.x = x_456.w;
  let x_460 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_460 * 2.0f) + -1.0f);
  let x_466 : f32 = u_xlat1.x;
  u_xlat5.x = ((x_466 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_472 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_472, 0.0f, 1.0f);
  let x_476 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_476 * 2.0f) + -1.0f);
  let x_481 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_481)) + 1.0f);
  let x_487 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_487);
  let x_491 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_491) + 1.0f);
  let x_496 : f32 = u_xlat1.x;
  let x_498 : f32 = u_xlat5.x;
  u_xlat1.x = (x_496 * x_498);
  let x_501 : vec4<f32> = u_xlat0;
  u_xlat5 = (vec3<f32>(x_501.x, x_501.y, x_501.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_506 : vec4<f32> = u_xlat0;
  u_xlat2 = max(abs(vec3<f32>(x_506.x, x_506.y, x_506.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_512 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_512);
  let x_514 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_514 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_518 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_518);
  let x_520 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_520 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_532 : vec4<f32> = u_xlat0;
  let x_535 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_532.x, x_532.y, x_532.z, x_532.x));
  u_xlatb0 = vec3<bool>(x_535.x, x_535.y, x_535.z);
  let x_538 : bool = u_xlatb0.x;
  if (x_538) {
    let x_543 : f32 = u_xlat5.x;
    x_539 = x_543;
  } else {
    let x_546 : f32 = u_xlat2.x;
    x_539 = x_546;
  }
  let x_547 : f32 = x_539;
  u_xlat0.x = x_547;
  let x_550 : bool = u_xlatb0.y;
  if (x_550) {
    let x_555 : f32 = u_xlat5.y;
    x_551 = x_555;
  } else {
    let x_558 : f32 = u_xlat2.y;
    x_551 = x_558;
  }
  let x_559 : f32 = x_551;
  u_xlat0.y = x_559;
  let x_563 : bool = u_xlatb0.z;
  if (x_563) {
    let x_568 : f32 = u_xlat5.z;
    x_564 = x_568;
  } else {
    let x_571 : f32 = u_xlat2.z;
    x_564 = x_571;
  }
  let x_572 : f32 = x_564;
  u_xlat0.z = x_572;
  let x_574 : vec4<f32> = u_xlat1;
  let x_579 : vec4<f32> = u_xlat0;
  let x_581 : vec3<f32> = ((vec3<f32>(x_574.x, x_574.x, x_574.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_579.x, x_579.y, x_579.z));
  let x_582 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_581.x, x_581.y, x_581.z, x_582.w);
  let x_584 : vec4<f32> = u_xlat0;
  let x_588 : vec3<f32> = (vec3<f32>(x_584.x, x_584.y, x_584.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_589 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_588.x, x_588.y, x_588.z, x_589.w);
  let x_591 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_591.x, x_591.y, x_591.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_596 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_596 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_600 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_600), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_603 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_603);
  let x_605 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_605 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_609 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_609);
  let x_613 : vec4<f32> = u_xlat0;
  let x_615 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_613.x, x_613.y, x_613.z, x_613.x));
  u_xlatb0 = vec3<bool>(x_615.x, x_615.y, x_615.z);
  let x_620 : bool = u_xlatb0.x;
  if (x_620) {
    let x_625 : f32 = u_xlat1.x;
    x_621 = x_625;
  } else {
    let x_628 : f32 = u_xlat2.x;
    x_621 = x_628;
  }
  let x_629 : f32 = x_621;
  SV_Target0.x = x_629;
  let x_633 : bool = u_xlatb0.y;
  if (x_633) {
    let x_638 : f32 = u_xlat1.y;
    x_634 = x_638;
  } else {
    let x_641 : f32 = u_xlat2.y;
    x_634 = x_641;
  }
  let x_642 : f32 = x_634;
  SV_Target0.y = x_642;
  let x_645 : bool = u_xlatb0.z;
  if (x_645) {
    let x_650 : f32 = u_xlat1.z;
    x_646 = x_650;
  } else {
    let x_653 : f32 = u_xlat2.z;
    x_646 = x_653;
  }
  let x_654 : f32 = x_646;
  SV_Target0.z = x_654;
  let x_657 : f32 = u_xlat0.w;
  SV_Target0.w = x_657;
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

