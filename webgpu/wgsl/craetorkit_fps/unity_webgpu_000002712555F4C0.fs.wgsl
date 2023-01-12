struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  x_LightPositionRange : vec4<f32>,
  x_LightProjectionParams : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding_1 : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_LightColor0 : vec4<f32>,
  unity_WorldToLight : mat4x4<f32>,
}

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_18 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_Metallic : texture_2d<f32>;

@group(0) @binding(10) var sampler_Metallic : sampler;

@group(0) @binding(2) var x_NormalMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_NormalMap : sampler;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(6) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(5) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(7) var sampler_ShadowMapTexture : sampler_comparison;

@group(0) @binding(3) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(8) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat27 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat28 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec2<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat8 : vec3<f32>;
  var u_xlatb2 : bool;
  var u_xlat11 : vec3<f32>;
  var x_267 : vec3<f32>;
  var u_xlat30 : f32;
  var txVec0 : vec4<f32>;
  var u_xlat20 : f32;
  var u_xlat29 : f32;
  var u_xlat9 : vec3<f32>;
  var u_xlat18 : f32;
  var u_xlat10 : f32;
  var u_xlatb27 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD4;
  let x_23 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = (-(x_12) + vec3<f32>(x_23.x, x_23.y, x_23.z));
  let x_28 : vec3<f32> = u_xlat0;
  let x_29 : vec3<f32> = u_xlat0;
  u_xlat27 = dot(x_28, x_29);
  let x_31 : f32 = u_xlat27;
  u_xlat27 = inverseSqrt(x_31);
  let x_34 : f32 = u_xlat27;
  let x_36 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_34, x_34, x_34) * x_36);
  let x_40 : vec3<f32> = vs_TEXCOORD4;
  let x_45 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  let x_46 : vec3<f32> = (-(x_40) + x_45);
  let x_47 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_46.x, x_46.y, x_46.z, x_47.w);
  let x_50 : vec4<f32> = u_xlat2;
  let x_52 : vec4<f32> = u_xlat2;
  u_xlat28 = dot(vec3<f32>(x_50.x, x_50.y, x_50.z), vec3<f32>(x_52.x, x_52.y, x_52.z));
  let x_55 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_55);
  let x_58 : f32 = u_xlat28;
  let x_60 : vec4<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_58, x_58, x_58) * vec3<f32>(x_60.x, x_60.y, x_60.z));
  let x_77 : vec2<f32> = vs_TEXCOORD0;
  let x_78 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_77);
  u_xlat4 = vec3<f32>(x_78.x, x_78.y, x_78.z);
  let x_87 : vec2<f32> = vs_TEXCOORD0;
  let x_88 : vec4<f32> = textureSample(x_Metallic, sampler_Metallic, x_87);
  u_xlat5 = vec2<f32>(x_88.x, x_88.w);
  let x_96 : vec2<f32> = vs_TEXCOORD0;
  let x_97 : vec4<f32> = textureSample(x_NormalMap, sampler_NormalMap, x_96);
  u_xlat6 = vec3<f32>(x_97.x, x_97.y, x_97.w);
  let x_102 : f32 = u_xlat6.z;
  let x_105 : f32 = u_xlat6.x;
  u_xlat6.x = (x_102 * x_105);
  let x_108 : vec3<f32> = u_xlat6;
  let x_115 : vec2<f32> = ((vec2<f32>(x_108.x, x_108.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_116 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_115.x, x_115.y, x_116.z);
  let x_118 : vec3<f32> = u_xlat6;
  let x_120 : vec3<f32> = u_xlat6;
  u_xlat28 = dot(vec2<f32>(x_118.x, x_118.y), vec2<f32>(x_120.x, x_120.y));
  let x_123 : f32 = u_xlat28;
  u_xlat28 = min(x_123, 1.0f);
  let x_126 : f32 = u_xlat28;
  u_xlat28 = (-(x_126) + 1.0f);
  let x_129 : f32 = u_xlat28;
  u_xlat6.z = sqrt(x_129);
  let x_133 : vec3<f32> = vs_TEXCOORD4;
  let x_137 : vec4<f32> = x_18.unity_WorldToLight[1i];
  u_xlat7 = (vec3<f32>(x_133.y, x_133.y, x_133.y) * vec3<f32>(x_137.x, x_137.y, x_137.z));
  let x_141 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_143 : vec3<f32> = vs_TEXCOORD4;
  let x_146 : vec3<f32> = u_xlat7;
  u_xlat7 = ((vec3<f32>(x_141.x, x_141.y, x_141.z) * vec3<f32>(x_143.x, x_143.x, x_143.x)) + x_146);
  let x_150 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_152 : vec3<f32> = vs_TEXCOORD4;
  let x_155 : vec3<f32> = u_xlat7;
  u_xlat7 = ((vec3<f32>(x_150.x, x_150.y, x_150.z) * vec3<f32>(x_152.z, x_152.z, x_152.z)) + x_155);
  let x_157 : vec3<f32> = u_xlat7;
  let x_160 : vec4<f32> = x_18.unity_WorldToLight[3i];
  u_xlat7 = (x_157 + vec3<f32>(x_160.x, x_160.y, x_160.z));
  let x_167 : f32 = x_18.unity_MatrixV[0i].z;
  u_xlat8.x = x_167;
  let x_170 : f32 = x_18.unity_MatrixV[1i].z;
  u_xlat8.y = x_170;
  let x_174 : f32 = x_18.unity_MatrixV[2i].z;
  u_xlat8.z = x_174;
  let x_176 : vec4<f32> = u_xlat2;
  let x_178 : vec3<f32> = u_xlat8;
  u_xlat28 = dot(vec3<f32>(x_176.x, x_176.y, x_176.z), x_178);
  let x_180 : vec3<f32> = vs_TEXCOORD4;
  let x_183 : vec4<f32> = x_18.unity_ShadowFadeCenterAndType;
  let x_186 : vec3<f32> = (x_180 + -(vec3<f32>(x_183.x, x_183.y, x_183.z)));
  let x_187 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_186.x, x_186.y, x_186.z, x_187.w);
  let x_189 : vec4<f32> = u_xlat2;
  let x_191 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_189.x, x_189.y, x_189.z), vec3<f32>(x_191.x, x_191.y, x_191.z));
  let x_196 : f32 = u_xlat2.x;
  u_xlat2.x = sqrt(x_196);
  let x_199 : f32 = u_xlat28;
  let x_202 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_199) + x_202);
  let x_207 : f32 = x_18.unity_ShadowFadeCenterAndType.w;
  let x_209 : f32 = u_xlat2.x;
  let x_211 : f32 = u_xlat28;
  u_xlat28 = ((x_207 * x_209) + x_211);
  let x_213 : f32 = u_xlat28;
  let x_216 : f32 = x_18.x_LightShadowData.z;
  let x_219 : f32 = x_18.x_LightShadowData.w;
  u_xlat28 = ((x_213 * x_216) + x_219);
  let x_221 : f32 = u_xlat28;
  u_xlat28 = clamp(x_221, 0.0f, 1.0f);
  let x_229 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb2 = (x_229 == 1.0f);
  let x_231 : bool = u_xlatb2;
  if (x_231) {
    let x_235 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb2 = (x_235 == 1.0f);
    let x_238 : vec3<f32> = vs_TEXCOORD4;
    let x_242 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    u_xlat11 = (vec3<f32>(x_238.y, x_238.y, x_238.y) * vec3<f32>(x_242.x, x_242.y, x_242.z));
    let x_246 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_248 : vec3<f32> = vs_TEXCOORD4;
    let x_251 : vec3<f32> = u_xlat11;
    u_xlat11 = ((vec3<f32>(x_246.x, x_246.y, x_246.z) * vec3<f32>(x_248.x, x_248.x, x_248.x)) + x_251);
    let x_254 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_256 : vec3<f32> = vs_TEXCOORD4;
    let x_259 : vec3<f32> = u_xlat11;
    u_xlat11 = ((vec3<f32>(x_254.x, x_254.y, x_254.z) * vec3<f32>(x_256.z, x_256.z, x_256.z)) + x_259);
    let x_261 : vec3<f32> = u_xlat11;
    let x_263 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    u_xlat11 = (x_261 + vec3<f32>(x_263.x, x_263.y, x_263.z));
    let x_266 : bool = u_xlatb2;
    if (x_266) {
      let x_270 : vec3<f32> = u_xlat11;
      x_267 = x_270;
    } else {
      let x_272 : vec3<f32> = vs_TEXCOORD4;
      x_267 = x_272;
    }
    let x_273 : vec3<f32> = x_267;
    let x_274 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_273.x, x_273.y, x_273.z, x_274.w);
    let x_276 : vec4<f32> = u_xlat2;
    let x_280 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_282 : vec3<f32> = (vec3<f32>(x_276.x, x_276.y, x_276.z) + -(x_280));
    let x_283 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_282.x, x_282.y, x_282.z, x_283.w);
    let x_285 : vec4<f32> = u_xlat2;
    let x_289 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_290 : vec3<f32> = (vec3<f32>(x_285.x, x_285.y, x_285.z) * x_289);
    let x_291 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_291.x, x_290.x, x_290.y, x_290.z);
    let x_294 : f32 = u_xlat2.y;
    u_xlat11.x = ((x_294 * 0.25f) + 0.75f);
    let x_302 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat30 = ((x_302 * 0.5f) + 0.75f);
    let x_307 : f32 = u_xlat11.x;
    let x_308 : f32 = u_xlat30;
    u_xlat2.x = max(x_307, x_308);
    let x_319 : vec4<f32> = u_xlat2;
    let x_321 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_319.x, x_319.z, x_319.w));
    u_xlat2 = x_321;
  } else {
    u_xlat2.x = 1.0f;
    u_xlat2.y = 1.0f;
    u_xlat2.z = 1.0f;
    u_xlat2.w = 1.0f;
  }
  let x_327 : vec4<f32> = u_xlat2;
  let x_330 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat2.x = dot(x_327, x_330);
  let x_334 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_334, 0.0f, 1.0f);
  let x_337 : vec3<f32> = vs_TEXCOORD4;
  let x_339 : vec4<f32> = x_18.x_LightPositionRange;
  u_xlat11 = (x_337 + -(vec3<f32>(x_339.x, x_339.y, x_339.z)));
  let x_344 : f32 = u_xlat11.y;
  let x_347 : f32 = u_xlat11.x;
  u_xlat30 = max(abs(x_344), abs(x_347));
  let x_351 : f32 = u_xlat11.z;
  let x_353 : f32 = u_xlat30;
  u_xlat30 = max(abs(x_351), x_353);
  let x_355 : f32 = u_xlat30;
  let x_357 : f32 = x_18.x_LightProjectionParams.z;
  u_xlat30 = (x_355 + -(x_357));
  let x_360 : f32 = u_xlat30;
  u_xlat30 = max(x_360, 0.00001f);
  let x_363 : f32 = u_xlat30;
  let x_365 : f32 = x_18.x_LightProjectionParams.w;
  u_xlat30 = (x_363 * x_365);
  let x_368 : f32 = x_18.x_LightProjectionParams.y;
  let x_369 : f32 = u_xlat30;
  u_xlat30 = (x_368 / x_369);
  let x_371 : f32 = u_xlat30;
  let x_373 : f32 = x_18.x_LightProjectionParams.x;
  u_xlat30 = (x_371 + -(x_373));
  let x_376 : f32 = u_xlat30;
  u_xlat30 = (-(x_376) + 1.0f);
  let x_380 : vec3<f32> = u_xlat11;
  let x_381 : f32 = u_xlat30;
  txVec0 = vec4<f32>(x_380.x, x_380.y, x_380.z, x_381);
  let x_394 : vec4<f32> = txVec0;
  let x_396 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_394.xyz, x_394.w);
  u_xlat11.x = x_396;
  let x_400 : f32 = x_18.x_LightShadowData.x;
  u_xlat20 = (-(x_400) + 1.0f);
  let x_404 : f32 = u_xlat11.x;
  let x_405 : f32 = u_xlat20;
  let x_408 : f32 = x_18.x_LightShadowData.x;
  u_xlat11.x = ((x_404 * x_405) + x_408);
  let x_412 : f32 = u_xlat11.x;
  let x_415 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_412) + x_415);
  let x_418 : f32 = u_xlat28;
  let x_420 : f32 = u_xlat2.x;
  let x_423 : f32 = u_xlat11.x;
  u_xlat28 = ((x_418 * x_420) + x_423);
  let x_425 : vec3<f32> = u_xlat7;
  let x_426 : vec3<f32> = u_xlat7;
  u_xlat2.x = dot(x_425, x_426);
  let x_434 : vec4<f32> = u_xlat2;
  let x_436 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_434.x, x_434.x));
  u_xlat2.x = x_436.x;
  let x_439 : f32 = u_xlat28;
  let x_441 : f32 = u_xlat2.x;
  u_xlat28 = (x_439 * x_441);
  let x_444 : vec3<f32> = vs_TEXCOORD1;
  let x_445 : vec3<f32> = u_xlat6;
  u_xlat2.x = dot(x_444, x_445);
  let x_449 : vec3<f32> = vs_TEXCOORD2;
  let x_450 : vec3<f32> = u_xlat6;
  u_xlat2.y = dot(x_449, x_450);
  let x_454 : vec3<f32> = vs_TEXCOORD3;
  let x_455 : vec3<f32> = u_xlat6;
  u_xlat2.z = dot(x_454, x_455);
  let x_459 : vec4<f32> = u_xlat2;
  let x_461 : vec4<f32> = u_xlat2;
  u_xlat29 = dot(vec3<f32>(x_459.x, x_459.y, x_459.z), vec3<f32>(x_461.x, x_461.y, x_461.z));
  let x_464 : f32 = u_xlat29;
  u_xlat29 = inverseSqrt(x_464);
  let x_466 : f32 = u_xlat29;
  let x_468 : vec4<f32> = u_xlat2;
  let x_470 : vec3<f32> = (vec3<f32>(x_466, x_466, x_466) * vec3<f32>(x_468.x, x_468.y, x_468.z));
  let x_471 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_470.x, x_470.y, x_470.z, x_471.w);
  let x_473 : f32 = u_xlat28;
  let x_477 : vec4<f32> = x_18.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_473, x_473, x_473) * vec3<f32>(x_477.x, x_477.y, x_477.z));
  let x_480 : vec3<f32> = u_xlat4;
  u_xlat7 = (x_480 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_484 : vec2<f32> = u_xlat5;
  let x_486 : vec3<f32> = u_xlat7;
  u_xlat7 = ((vec3<f32>(x_484.x, x_484.x, x_484.x) * x_486) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_492 : f32 = u_xlat5.x;
  u_xlat28 = ((-(x_492) * 0.959999979f) + 0.959999979f);
  let x_497 : f32 = u_xlat28;
  let x_499 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_497, x_497, x_497) * x_499);
  let x_502 : f32 = u_xlat5.y;
  u_xlat28 = (-(x_502) + 1.0f);
  let x_505 : vec3<f32> = u_xlat0;
  let x_506 : f32 = u_xlat27;
  let x_509 : vec3<f32> = u_xlat3;
  u_xlat0 = ((x_505 * vec3<f32>(x_506, x_506, x_506)) + x_509);
  let x_511 : vec3<f32> = u_xlat0;
  let x_512 : vec3<f32> = u_xlat0;
  u_xlat27 = dot(x_511, x_512);
  let x_514 : f32 = u_xlat27;
  u_xlat27 = max(x_514, 0.001f);
  let x_517 : f32 = u_xlat27;
  u_xlat27 = inverseSqrt(x_517);
  let x_519 : f32 = u_xlat27;
  let x_521 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_519, x_519, x_519) * x_521);
  let x_523 : vec4<f32> = u_xlat2;
  let x_525 : vec3<f32> = u_xlat3;
  u_xlat27 = dot(vec3<f32>(x_523.x, x_523.y, x_523.z), x_525);
  let x_527 : vec4<f32> = u_xlat2;
  let x_529 : vec3<f32> = u_xlat1;
  u_xlat29 = dot(vec3<f32>(x_527.x, x_527.y, x_527.z), x_529);
  let x_531 : f32 = u_xlat29;
  u_xlat29 = clamp(x_531, 0.0f, 1.0f);
  let x_533 : vec4<f32> = u_xlat2;
  let x_535 : vec3<f32> = u_xlat0;
  u_xlat2.x = dot(vec3<f32>(x_533.x, x_533.y, x_533.z), x_535);
  let x_539 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_539, 0.0f, 1.0f);
  let x_542 : vec3<f32> = u_xlat1;
  let x_543 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_542, x_543);
  let x_547 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_547, 0.0f, 1.0f);
  let x_552 : f32 = u_xlat0.x;
  let x_554 : f32 = u_xlat0.x;
  u_xlat9.x = (x_552 * x_554);
  let x_557 : vec3<f32> = u_xlat9;
  let x_559 : f32 = u_xlat28;
  u_xlat9.x = dot(vec2<f32>(x_557.x, x_557.x), vec2<f32>(x_559, x_559));
  let x_564 : f32 = u_xlat9.x;
  u_xlat9.x = (x_564 + -0.5f);
  let x_569 : f32 = u_xlat29;
  u_xlat18 = (-(x_569) + 1.0f);
  let x_572 : f32 = u_xlat18;
  let x_573 : f32 = u_xlat18;
  u_xlat1.x = (x_572 * x_573);
  let x_577 : f32 = u_xlat1.x;
  let x_579 : f32 = u_xlat1.x;
  u_xlat1.x = (x_577 * x_579);
  let x_582 : f32 = u_xlat18;
  let x_584 : f32 = u_xlat1.x;
  u_xlat18 = (x_582 * x_584);
  let x_587 : f32 = u_xlat9.x;
  let x_588 : f32 = u_xlat18;
  u_xlat18 = ((x_587 * x_588) + 1.0f);
  let x_591 : f32 = u_xlat27;
  u_xlat1.x = (-(abs(x_591)) + 1.0f);
  let x_598 : f32 = u_xlat1.x;
  let x_600 : f32 = u_xlat1.x;
  u_xlat10 = (x_598 * x_600);
  let x_602 : f32 = u_xlat10;
  let x_603 : f32 = u_xlat10;
  u_xlat10 = (x_602 * x_603);
  let x_606 : f32 = u_xlat1.x;
  let x_607 : f32 = u_xlat10;
  u_xlat1.x = (x_606 * x_607);
  let x_611 : f32 = u_xlat9.x;
  let x_613 : f32 = u_xlat1.x;
  u_xlat9.x = ((x_611 * x_613) + 1.0f);
  let x_618 : f32 = u_xlat9.x;
  let x_619 : f32 = u_xlat18;
  u_xlat9.x = (x_618 * x_619);
  let x_622 : f32 = u_xlat28;
  let x_623 : f32 = u_xlat28;
  u_xlat18 = (x_622 * x_623);
  let x_625 : f32 = u_xlat18;
  u_xlat18 = max(x_625, 0.002f);
  let x_628 : f32 = u_xlat18;
  u_xlat1.x = (-(x_628) + 1.0f);
  let x_632 : f32 = u_xlat27;
  let x_635 : f32 = u_xlat1.x;
  let x_637 : f32 = u_xlat18;
  u_xlat10 = ((abs(x_632) * x_635) + x_637);
  let x_639 : f32 = u_xlat29;
  let x_641 : f32 = u_xlat1.x;
  let x_643 : f32 = u_xlat18;
  u_xlat1.x = ((x_639 * x_641) + x_643);
  let x_646 : f32 = u_xlat27;
  let x_649 : f32 = u_xlat1.x;
  u_xlat27 = (abs(x_646) * x_649);
  let x_651 : f32 = u_xlat29;
  let x_652 : f32 = u_xlat10;
  let x_654 : f32 = u_xlat27;
  u_xlat27 = ((x_651 * x_652) + x_654);
  let x_656 : f32 = u_xlat27;
  u_xlat27 = (x_656 + 0.00001f);
  let x_658 : f32 = u_xlat27;
  u_xlat27 = (0.5f / x_658);
  let x_660 : f32 = u_xlat18;
  let x_661 : f32 = u_xlat18;
  u_xlat18 = (x_660 * x_661);
  let x_664 : f32 = u_xlat2.x;
  let x_665 : f32 = u_xlat18;
  let x_668 : f32 = u_xlat2.x;
  u_xlat1.x = ((x_664 * x_665) + -(x_668));
  let x_673 : f32 = u_xlat1.x;
  let x_675 : f32 = u_xlat2.x;
  u_xlat1.x = ((x_673 * x_675) + 1.0f);
  let x_679 : f32 = u_xlat18;
  u_xlat18 = (x_679 * 0.318309873f);
  let x_683 : f32 = u_xlat1.x;
  let x_685 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_683 * x_685) + 0.0000001f);
  let x_690 : f32 = u_xlat18;
  let x_692 : f32 = u_xlat1.x;
  u_xlat18 = (x_690 / x_692);
  let x_694 : f32 = u_xlat18;
  let x_695 : f32 = u_xlat27;
  u_xlat9.y = (x_694 * x_695);
  let x_698 : f32 = u_xlat29;
  let x_700 : vec3<f32> = u_xlat9;
  let x_702 : vec2<f32> = (vec2<f32>(x_698, x_698) * vec2<f32>(x_700.x, x_700.y));
  let x_703 : vec3<f32> = u_xlat9;
  u_xlat9 = vec3<f32>(x_702.x, x_702.y, x_703.z);
  let x_706 : f32 = u_xlat9.y;
  u_xlat18 = (x_706 * 3.141592741f);
  let x_709 : f32 = u_xlat18;
  u_xlat18 = max(x_709, 0.0f);
  let x_711 : vec3<f32> = u_xlat7;
  let x_712 : vec3<f32> = u_xlat7;
  u_xlat27 = dot(x_711, x_712);
  let x_715 : f32 = u_xlat27;
  u_xlatb27 = !((x_715 == 0.0f));
  let x_717 : bool = u_xlatb27;
  u_xlat27 = select(0.0f, 1.0f, x_717);
  let x_719 : f32 = u_xlat27;
  let x_720 : f32 = u_xlat18;
  u_xlat18 = (x_719 * x_720);
  let x_722 : vec3<f32> = u_xlat9;
  let x_724 : vec3<f32> = u_xlat6;
  u_xlat1 = (vec3<f32>(x_722.x, x_722.x, x_722.x) * x_724);
  let x_726 : vec3<f32> = u_xlat6;
  let x_727 : f32 = u_xlat18;
  u_xlat9 = (x_726 * vec3<f32>(x_727, x_727, x_727));
  let x_731 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_731) + 1.0f);
  let x_736 : f32 = u_xlat0.x;
  let x_738 : f32 = u_xlat0.x;
  u_xlat28 = (x_736 * x_738);
  let x_740 : f32 = u_xlat28;
  let x_741 : f32 = u_xlat28;
  u_xlat28 = (x_740 * x_741);
  let x_744 : f32 = u_xlat0.x;
  let x_745 : f32 = u_xlat28;
  u_xlat0.x = (x_744 * x_745);
  let x_748 : vec3<f32> = u_xlat7;
  let x_751 : vec3<f32> = (-(x_748) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_752 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_751.x, x_751.y, x_751.z, x_752.w);
  let x_754 : vec4<f32> = u_xlat2;
  let x_756 : vec3<f32> = u_xlat0;
  let x_759 : vec3<f32> = u_xlat7;
  let x_760 : vec3<f32> = ((vec3<f32>(x_754.x, x_754.y, x_754.z) * vec3<f32>(x_756.x, x_756.x, x_756.x)) + x_759);
  let x_761 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_760.x, x_760.y, x_760.z, x_761.w);
  let x_763 : vec3<f32> = u_xlat9;
  let x_764 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_763 * vec3<f32>(x_764.x, x_764.y, x_764.z));
  let x_769 : vec3<f32> = u_xlat4;
  let x_770 : vec3<f32> = u_xlat1;
  let x_772 : vec3<f32> = u_xlat0;
  let x_773 : vec3<f32> = ((x_769 * x_770) + x_772);
  let x_774 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_773.x, x_773.y, x_773.z, x_774.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_TEXCOORD4_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

