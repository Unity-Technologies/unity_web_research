struct PGlobals {
  x_Time : vec4<f32>,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_LightColor0 : vec4<f32>,
  x_FaceUVSpeedX : f32,
  x_FaceUVSpeedY : f32,
  @size(8)
  padding_2 : u32,
  x_FaceColor : vec4<f32>,
  x_OutlineSoftness : f32,
  x_OutlineUVSpeedX : f32,
  x_OutlineUVSpeedY : f32,
  @size(4)
  padding_3 : u32,
  x_OutlineColor : vec4<f32>,
  x_OutlineWidth : f32,
  x_ScaleRatioA : f32,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec2<f32>;

var<private> u_xlat6 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_62 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(2) var x_FaceTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_FaceTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(3) var x_OutlineTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_OutlineTex : sampler;

var<private> u_xlat18 : f32;

var<private> u_xlat12 : f32;

var<private> u_xlatb1 : bool;

var<private> u_xlatb7 : bool;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat13 : f32;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(5) var samplerunity_ProbeVolumeSH : sampler;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_338 : vec3<f32>;
  var x_488 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y));
  u_xlat0.x = x_25.w;
  let x_33 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_33) + 0.5f);
  let x_39 : f32 = u_xlat0.x;
  let x_44 : f32 = vs_TEXCOORD5.x;
  u_xlat0.x = (x_39 + -(x_44));
  let x_49 : f32 = u_xlat0.x;
  let x_52 : f32 = vs_TEXCOORD5.y;
  u_xlat0.x = ((x_49 * x_52) + 0.5f);
  let x_67 : f32 = x_62.x_OutlineWidth;
  let x_70 : f32 = x_62.x_ScaleRatioA;
  u_xlat6.x = (x_67 * x_70);
  let x_75 : f32 = x_62.x_OutlineSoftness;
  let x_77 : f32 = x_62.x_ScaleRatioA;
  u_xlat6.y = (x_75 * x_77);
  let x_80 : vec3<f32> = u_xlat6;
  let x_82 : vec2<f32> = vs_TEXCOORD5;
  let x_84 : vec2<f32> = (vec2<f32>(x_80.x, x_80.y) * vec2<f32>(x_82.y, x_82.y));
  let x_85 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_84.x, x_85.y, x_84.y);
  let x_89 : vec4<f32> = vs_COLOR0;
  let x_93 : vec4<f32> = x_62.x_FaceColor;
  u_xlat1 = (x_89 * x_93);
  let x_97 : f32 = vs_COLOR0.w;
  let x_100 : f32 = x_62.x_OutlineColor.w;
  u_xlat2.x = (x_97 * x_100);
  let x_106 : f32 = x_62.x_FaceUVSpeedX;
  let x_109 : f32 = x_62.x_FaceUVSpeedY;
  let x_113 : vec4<f32> = x_62.x_Time;
  let x_116 : vec4<f32> = vs_TEXCOORD0;
  let x_118 : vec2<f32> = ((vec2<f32>(x_106, x_109) * vec2<f32>(x_113.y, x_113.y)) + vec2<f32>(x_116.z, x_116.w));
  let x_119 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_118.x, x_118.y, x_119.z);
  let x_127 : vec3<f32> = u_xlat8;
  let x_129 : vec4<f32> = textureSample(x_FaceTex, sampler_FaceTex, vec2<f32>(x_127.x, x_127.y));
  u_xlat3 = x_129;
  let x_130 : vec4<f32> = u_xlat1;
  let x_131 : vec4<f32> = u_xlat3;
  u_xlat1 = (x_130 * x_131);
  let x_135 : f32 = x_62.x_OutlineUVSpeedX;
  let x_138 : f32 = x_62.x_OutlineUVSpeedY;
  let x_141 : vec4<f32> = x_62.x_Time;
  let x_145 : vec2<f32> = vs_TEXCOORD1;
  let x_146 : vec2<f32> = ((vec2<f32>(x_135, x_138) * vec2<f32>(x_141.y, x_141.y)) + x_145);
  let x_147 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_146.x, x_146.y, x_147.z);
  let x_154 : vec3<f32> = u_xlat8;
  let x_156 : vec4<f32> = textureSample(x_OutlineTex, sampler_OutlineTex, vec2<f32>(x_154.x, x_154.y));
  u_xlat3 = x_156;
  let x_157 : vec4<f32> = u_xlat3;
  let x_160 : vec4<f32> = x_62.x_OutlineColor;
  u_xlat8 = (vec3<f32>(x_157.x, x_157.y, x_157.z) * vec3<f32>(x_160.x, x_160.y, x_160.z));
  let x_164 : f32 = u_xlat2.x;
  let x_166 : f32 = u_xlat3.w;
  u_xlat3.w = (x_164 * x_166);
  let x_170 : f32 = u_xlat6.x;
  let x_174 : f32 = u_xlat0.x;
  u_xlat2.x = ((-(x_170) * 0.5f) + x_174);
  let x_180 : f32 = u_xlat6.z;
  let x_183 : f32 = u_xlat2.x;
  u_xlat18 = ((x_180 * 0.5f) + x_183);
  let x_187 : f32 = u_xlat6.y;
  let x_189 : f32 = vs_TEXCOORD5.y;
  u_xlat12 = ((x_187 * x_189) + 1.0f);
  let x_193 : f32 = u_xlat18;
  let x_194 : f32 = u_xlat12;
  u_xlat12 = (x_193 / x_194);
  let x_196 : f32 = u_xlat12;
  u_xlat12 = clamp(x_196, 0.0f, 1.0f);
  let x_199 : f32 = u_xlat12;
  u_xlat12 = (-(x_199) + 1.0f);
  let x_203 : f32 = u_xlat6.x;
  let x_206 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_203 * 0.5f) + x_206);
  let x_210 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_210, 0.0f, 1.0f);
  let x_214 : f32 = u_xlat6.x;
  u_xlat6.x = min(x_214, 1.0f);
  let x_218 : f32 = u_xlat6.x;
  u_xlat6.x = sqrt(x_218);
  let x_222 : f32 = u_xlat6.x;
  let x_224 : f32 = u_xlat0.x;
  u_xlat0.x = (x_222 * x_224);
  let x_227 : vec4<f32> = u_xlat1;
  let x_229 : vec4<f32> = u_xlat1;
  let x_231 : vec3<f32> = (vec3<f32>(x_227.w, x_227.w, x_227.w) * vec3<f32>(x_229.x, x_229.y, x_229.z));
  let x_232 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_231.x, x_231.y, x_231.z, x_232.w);
  let x_234 : vec3<f32> = u_xlat8;
  let x_235 : vec4<f32> = u_xlat3;
  let x_237 : vec3<f32> = (x_234 * vec3<f32>(x_235.w, x_235.w, x_235.w));
  let x_238 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_237.x, x_237.y, x_237.z, x_238.w);
  let x_240 : vec4<f32> = u_xlat1;
  let x_242 : vec4<f32> = u_xlat3;
  u_xlat2 = (-(x_240) + x_242);
  let x_244 : vec4<f32> = u_xlat0;
  let x_246 : vec4<f32> = u_xlat2;
  let x_248 : vec4<f32> = u_xlat1;
  u_xlat1 = ((vec4<f32>(x_244.x, x_244.x, x_244.x, x_244.x) * x_246) + x_248);
  let x_250 : f32 = u_xlat12;
  let x_252 : vec4<f32> = u_xlat1;
  u_xlat0 = (vec4<f32>(x_250, x_250, x_250, x_250) * x_252);
  let x_255 : f32 = u_xlat0.w;
  u_xlat1.x = max(x_255, 0.0001f);
  let x_259 : vec4<f32> = u_xlat0;
  let x_261 : vec4<f32> = u_xlat1;
  let x_263 : vec3<f32> = (vec3<f32>(x_259.x, x_259.y, x_259.z) / vec3<f32>(x_261.x, x_261.x, x_261.x));
  let x_264 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_263.x, x_263.y, x_263.z, x_264.w);
  let x_271 : f32 = x_62.unity_ProbeVolumeParams.x;
  u_xlatb1 = (x_271 == 1.0f);
  let x_273 : bool = u_xlatb1;
  if (x_273) {
    let x_278 : f32 = x_62.unity_ProbeVolumeParams.y;
    u_xlatb7 = (x_278 == 1.0f);
    let x_281 : vec4<f32> = vs_TEXCOORD3;
    let x_286 : vec4<f32> = x_62.unity_ProbeVolumeWorldToObject[1i];
    let x_288 : vec3<f32> = (vec3<f32>(x_281.w, x_281.w, x_281.w) * vec3<f32>(x_286.x, x_286.y, x_286.z));
    let x_289 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_288.x, x_288.y, x_288.z, x_289.w);
    let x_292 : vec4<f32> = x_62.unity_ProbeVolumeWorldToObject[0i];
    let x_295 : vec4<f32> = vs_TEXCOORD2;
    let x_298 : vec4<f32> = u_xlat2;
    let x_300 : vec3<f32> = ((vec3<f32>(x_292.x, x_292.y, x_292.z) * vec3<f32>(x_295.w, x_295.w, x_295.w)) + vec3<f32>(x_298.x, x_298.y, x_298.z));
    let x_301 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_300.x, x_300.y, x_300.z, x_301.w);
    let x_305 : vec4<f32> = x_62.unity_ProbeVolumeWorldToObject[2i];
    let x_308 : vec4<f32> = vs_TEXCOORD4;
    let x_311 : vec4<f32> = u_xlat2;
    let x_313 : vec3<f32> = ((vec3<f32>(x_305.x, x_305.y, x_305.z) * vec3<f32>(x_308.w, x_308.w, x_308.w)) + vec3<f32>(x_311.x, x_311.y, x_311.z));
    let x_314 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_313.x, x_313.y, x_313.z, x_314.w);
    let x_316 : vec4<f32> = u_xlat2;
    let x_320 : vec4<f32> = x_62.unity_ProbeVolumeWorldToObject[3i];
    let x_322 : vec3<f32> = (vec3<f32>(x_316.x, x_316.y, x_316.z) + vec3<f32>(x_320.x, x_320.y, x_320.z));
    let x_323 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
    let x_327 : f32 = vs_TEXCOORD2.w;
    u_xlat9.x = x_327;
    let x_330 : f32 = vs_TEXCOORD3.w;
    u_xlat9.y = x_330;
    let x_333 : f32 = vs_TEXCOORD4.w;
    u_xlat9.z = x_333;
    let x_336 : bool = u_xlatb7;
    if (x_336) {
      let x_341 : vec4<f32> = u_xlat2;
      x_338 = vec3<f32>(x_341.x, x_341.y, x_341.z);
    } else {
      let x_344 : vec3<f32> = u_xlat9;
      x_338 = x_344;
    }
    let x_345 : vec3<f32> = x_338;
    u_xlat7 = x_345;
    let x_346 : vec3<f32> = u_xlat7;
    let x_350 : vec3<f32> = x_62.unity_ProbeVolumeMin;
    u_xlat7 = (x_346 + -(x_350));
    let x_353 : vec3<f32> = u_xlat7;
    let x_356 : vec3<f32> = x_62.unity_ProbeVolumeSizeInv;
    let x_357 : vec3<f32> = (x_353 * x_356);
    let x_358 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_358.x, x_357.x, x_357.y, x_357.z);
    let x_361 : f32 = u_xlat2.y;
    u_xlat7.x = ((x_361 * 0.25f) + 0.75f);
    let x_369 : f32 = x_62.unity_ProbeVolumeParams.z;
    u_xlat13 = ((x_369 * 0.5f) + 0.75f);
    let x_372 : f32 = u_xlat13;
    let x_374 : f32 = u_xlat7.x;
    u_xlat2.x = max(x_372, x_374);
    let x_385 : vec4<f32> = u_xlat2;
    let x_387 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_385.x, x_385.z, x_385.w));
    u_xlat2 = x_387;
  } else {
    u_xlat2.x = 1.0f;
    u_xlat2.y = 1.0f;
    u_xlat2.z = 1.0f;
    u_xlat2.w = 1.0f;
  }
  let x_393 : vec4<f32> = u_xlat2;
  let x_396 : vec4<f32> = x_62.unity_OcclusionMaskSelector;
  u_xlat7.x = dot(x_393, x_396);
  let x_400 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_400, 0.0f, 1.0f);
  let x_404 : f32 = vs_TEXCOORD2.z;
  u_xlat2.x = x_404;
  let x_407 : f32 = vs_TEXCOORD3.z;
  u_xlat2.y = x_407;
  let x_410 : f32 = vs_TEXCOORD4.z;
  u_xlat2.z = x_410;
  let x_412 : vec4<f32> = u_xlat2;
  let x_414 : vec4<f32> = u_xlat2;
  u_xlat13 = dot(vec3<f32>(x_412.x, x_412.y, x_412.z), vec3<f32>(x_414.x, x_414.y, x_414.z));
  let x_417 : f32 = u_xlat13;
  u_xlat13 = inverseSqrt(x_417);
  let x_419 : f32 = u_xlat13;
  let x_421 : vec4<f32> = u_xlat2;
  let x_423 : vec3<f32> = (vec3<f32>(x_419, x_419, x_419) * vec3<f32>(x_421.x, x_421.y, x_421.z));
  let x_424 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_423.x, x_423.y, x_423.z, x_424.w);
  let x_426 : vec3<f32> = u_xlat7;
  let x_430 : vec4<f32> = x_62.x_LightColor0;
  u_xlat7 = (vec3<f32>(x_426.x, x_426.x, x_426.x) * vec3<f32>(x_430.x, x_430.y, x_430.z));
  let x_433 : bool = u_xlatb1;
  if (x_433) {
    let x_437 : f32 = x_62.unity_ProbeVolumeParams.y;
    u_xlatb1 = (x_437 == 1.0f);
    let x_439 : vec4<f32> = vs_TEXCOORD3;
    let x_442 : vec4<f32> = x_62.unity_ProbeVolumeWorldToObject[1i];
    let x_444 : vec3<f32> = (vec3<f32>(x_439.w, x_439.w, x_439.w) * vec3<f32>(x_442.x, x_442.y, x_442.z));
    let x_445 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_444.x, x_444.y, x_444.z, x_445.w);
    let x_448 : vec4<f32> = x_62.unity_ProbeVolumeWorldToObject[0i];
    let x_450 : vec4<f32> = vs_TEXCOORD2;
    let x_453 : vec4<f32> = u_xlat3;
    let x_455 : vec3<f32> = ((vec3<f32>(x_448.x, x_448.y, x_448.z) * vec3<f32>(x_450.w, x_450.w, x_450.w)) + vec3<f32>(x_453.x, x_453.y, x_453.z));
    let x_456 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_455.x, x_455.y, x_455.z, x_456.w);
    let x_459 : vec4<f32> = x_62.unity_ProbeVolumeWorldToObject[2i];
    let x_461 : vec4<f32> = vs_TEXCOORD4;
    let x_464 : vec4<f32> = u_xlat3;
    let x_466 : vec3<f32> = ((vec3<f32>(x_459.x, x_459.y, x_459.z) * vec3<f32>(x_461.w, x_461.w, x_461.w)) + vec3<f32>(x_464.x, x_464.y, x_464.z));
    let x_467 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_466.x, x_466.y, x_466.z, x_467.w);
    let x_469 : vec4<f32> = u_xlat3;
    let x_472 : vec4<f32> = x_62.unity_ProbeVolumeWorldToObject[3i];
    let x_474 : vec3<f32> = (vec3<f32>(x_469.x, x_469.y, x_469.z) + vec3<f32>(x_472.x, x_472.y, x_472.z));
    let x_475 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_474.x, x_474.y, x_474.z, x_475.w);
    let x_479 : f32 = vs_TEXCOORD2.w;
    u_xlat10.x = x_479;
    let x_482 : f32 = vs_TEXCOORD3.w;
    u_xlat10.y = x_482;
    let x_485 : f32 = vs_TEXCOORD4.w;
    u_xlat10.z = x_485;
    let x_487 : bool = u_xlatb1;
    if (x_487) {
      let x_491 : vec4<f32> = u_xlat3;
      x_488 = vec3<f32>(x_491.x, x_491.y, x_491.z);
    } else {
      let x_494 : vec3<f32> = u_xlat10;
      x_488 = x_494;
    }
    let x_495 : vec3<f32> = x_488;
    let x_496 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_495.x, x_495.y, x_495.z, x_496.w);
    let x_498 : vec4<f32> = u_xlat3;
    let x_501 : vec3<f32> = x_62.unity_ProbeVolumeMin;
    let x_503 : vec3<f32> = (vec3<f32>(x_498.x, x_498.y, x_498.z) + -(x_501));
    let x_504 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_503.x, x_503.y, x_503.z, x_504.w);
    let x_506 : vec4<f32> = u_xlat3;
    let x_509 : vec3<f32> = x_62.unity_ProbeVolumeSizeInv;
    let x_510 : vec3<f32> = (vec3<f32>(x_506.x, x_506.y, x_506.z) * x_509);
    let x_511 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_511.x, x_510.x, x_510.y, x_510.z);
    let x_514 : f32 = u_xlat3.y;
    u_xlat1.x = (x_514 * 0.25f);
    let x_518 : f32 = x_62.unity_ProbeVolumeParams.z;
    u_xlat9.x = (x_518 * 0.5f);
    let x_523 : f32 = x_62.unity_ProbeVolumeParams.z;
    u_xlat4.x = ((-(x_523) * 0.5f) + 0.25f);
    let x_529 : f32 = u_xlat1.x;
    let x_531 : f32 = u_xlat9.x;
    u_xlat1.x = max(x_529, x_531);
    let x_535 : f32 = u_xlat4.x;
    let x_537 : f32 = u_xlat1.x;
    u_xlat3.x = min(x_535, x_537);
    let x_543 : vec4<f32> = u_xlat3;
    let x_545 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_543.x, x_543.z, x_543.w));
    u_xlat4 = x_545;
    let x_547 : vec4<f32> = u_xlat3;
    let x_550 : vec3<f32> = (vec3<f32>(x_547.x, x_547.z, x_547.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_551 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_550.x, x_550.y, x_550.z, x_551.w);
    let x_556 : vec4<f32> = u_xlat5;
    let x_558 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_556.x, x_556.y, x_556.z));
    u_xlat5 = x_558;
    let x_559 : vec4<f32> = u_xlat3;
    let x_562 : vec3<f32> = (vec3<f32>(x_559.x, x_559.z, x_559.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_563 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_562.x, x_562.y, x_562.z, x_563.w);
    let x_568 : vec4<f32> = u_xlat3;
    let x_570 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_568.x, x_568.y, x_568.z));
    u_xlat3 = x_570;
    u_xlat2.w = 1.0f;
    let x_572 : vec4<f32> = u_xlat4;
    let x_573 : vec4<f32> = u_xlat2;
    u_xlat4.x = dot(x_572, x_573);
    let x_576 : vec4<f32> = u_xlat5;
    let x_577 : vec4<f32> = u_xlat2;
    u_xlat4.y = dot(x_576, x_577);
    let x_580 : vec4<f32> = u_xlat3;
    let x_581 : vec4<f32> = u_xlat2;
    u_xlat4.z = dot(x_580, x_581);
  } else {
    u_xlat2.w = 1.0f;
    let x_587 : vec4<f32> = x_62.unity_SHAr;
    let x_588 : vec4<f32> = u_xlat2;
    u_xlat4.x = dot(x_587, x_588);
    let x_592 : vec4<f32> = x_62.unity_SHAg;
    let x_593 : vec4<f32> = u_xlat2;
    u_xlat4.y = dot(x_592, x_593);
    let x_598 : vec4<f32> = x_62.unity_SHAb;
    let x_599 : vec4<f32> = u_xlat2;
    u_xlat4.z = dot(x_598, x_599);
  }
  let x_602 : vec4<f32> = u_xlat4;
  let x_606 : vec3<f32> = vs_TEXCOORD7;
  let x_607 : vec3<f32> = (vec3<f32>(x_602.x, x_602.y, x_602.z) + x_606);
  let x_608 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_607.x, x_607.y, x_607.z, x_608.w);
  let x_610 : vec4<f32> = u_xlat3;
  let x_613 : vec3<f32> = max(vec3<f32>(x_610.x, x_610.y, x_610.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_614 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_613.x, x_613.y, x_613.z, x_614.w);
  let x_616 : vec4<f32> = u_xlat2;
  let x_619 : vec4<f32> = x_62.x_WorldSpaceLightPos0;
  u_xlat1.x = dot(vec3<f32>(x_616.x, x_616.y, x_616.z), vec3<f32>(x_619.x, x_619.y, x_619.z));
  let x_624 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_624, 0.0f);
  let x_627 : vec4<f32> = u_xlat0;
  let x_629 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_627.x, x_627.y, x_627.z) * x_629);
  let x_631 : vec4<f32> = u_xlat0;
  let x_633 : vec4<f32> = u_xlat3;
  let x_635 : vec3<f32> = (vec3<f32>(x_631.x, x_631.y, x_631.z) * vec3<f32>(x_633.x, x_633.y, x_633.z));
  let x_636 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_635.x, x_635.y, x_635.z, x_636.w);
  let x_640 : vec3<f32> = u_xlat7;
  let x_641 : vec4<f32> = u_xlat1;
  let x_644 : vec4<f32> = u_xlat0;
  let x_646 : vec3<f32> = ((x_640 * vec3<f32>(x_641.x, x_641.x, x_641.x)) + vec3<f32>(x_644.x, x_644.y, x_644.z));
  let x_647 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_646.x, x_646.y, x_646.z, x_647.w);
  let x_650 : f32 = u_xlat0.w;
  SV_Target0.w = x_650;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(2) vs_TEXCOORD5_param : vec2<f32>, @location(6) vs_COLOR0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>, @location(4) vs_TEXCOORD3_param : vec4<f32>, @location(3) vs_TEXCOORD2_param : vec4<f32>, @location(5) vs_TEXCOORD4_param : vec4<f32>, @location(7) vs_TEXCOORD7_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

