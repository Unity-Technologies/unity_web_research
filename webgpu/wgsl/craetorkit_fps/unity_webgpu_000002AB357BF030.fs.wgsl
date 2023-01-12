struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_SpecCube0_BoxMax : vec4<f32>,
  unity_SpecCube0_BoxMin : vec4<f32>,
  unity_SpecCube0_ProbePosition : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
  unity_SpecCube1_BoxMax : vec4<f32>,
  unity_SpecCube1_BoxMin : vec4<f32>,
  unity_SpecCube1_ProbePosition : vec4<f32>,
  unity_SpecCube1_HDR : vec4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding_1 : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_LightColor0 : vec4<f32>,
  x_Color : vec4<f32>,
  x_Metallic : f32,
  x_Glossiness : f32,
  x_OcclusionStrength : f32,
  @size(4)
  padding_3 : u32,
  x_EmissionColor : vec4<f32>,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_33 : PGlobals;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(6) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(8) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(0) @binding(1) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_ShadowMapTexture : sampler;

@group(0) @binding(2) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_OcclusionMap : sampler;

@group(0) @binding(4) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(5) var unity_SpecCube1 : texture_cube<f32>;

@group(0) @binding(3) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_EmissionMap : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat39 : f32;
  var u_xlat40 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat41 : f32;
  var u_xlat42 : f32;
  var u_xlatb42 : bool;
  var x_249 : vec3<f32>;
  var u_xlat43 : f32;
  var u_xlatb41 : bool;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec3<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlatb10 : vec3<bool>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_458 : f32;
  var x_470 : f32;
  var x_482 : f32;
  var u_xlat44 : f32;
  var u_xlatb45 : bool;
  var u_xlat45 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat11 : vec3<f32>;
  var u_xlatb12 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_637 : f32;
  var x_649 : f32;
  var x_661 : f32;
  var u_xlat15 : vec3<f32>;
  var u_xlat28 : f32;
  var u_xlat16 : f32;
  var u_xlat29 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_24 : vec4<f32> = vs_TEXCOORD0;
  let x_26 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_24.x, x_24.y));
  u_xlat0 = vec3<f32>(x_26.x, x_26.y, x_26.z);
  let x_29 : vec3<f32> = u_xlat0;
  let x_38 : vec4<f32> = x_33.x_Color;
  u_xlat1 = (x_29 * vec3<f32>(x_38.x, x_38.y, x_38.z));
  let x_42 : vec4<f32> = x_33.x_Color;
  let x_44 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_42.x, x_42.y, x_42.z) * x_44) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_52 : f32 = x_33.x_Metallic;
  let x_54 : f32 = x_33.x_Metallic;
  let x_56 : f32 = x_33.x_Metallic;
  let x_57 : vec3<f32> = vec3<f32>(x_52, x_54, x_56);
  let x_62 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_57.x, x_57.y, x_57.z) * x_62) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_70 : f32 = x_33.x_Metallic;
  u_xlat39 = ((-(x_70) * 0.959999979f) + 0.959999979f);
  let x_75 : f32 = u_xlat39;
  let x_77 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_75, x_75, x_75) * x_77);
  let x_81 : vec4<f32> = vs_TEXCOORD4;
  let x_83 : vec4<f32> = vs_TEXCOORD4;
  u_xlat40 = dot(vec3<f32>(x_81.x, x_81.y, x_81.z), vec3<f32>(x_83.x, x_83.y, x_83.z));
  let x_86 : f32 = u_xlat40;
  u_xlat40 = inverseSqrt(x_86);
  let x_89 : f32 = u_xlat40;
  let x_91 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2 = (vec3<f32>(x_89, x_89, x_89) * vec3<f32>(x_91.x, x_91.y, x_91.z));
  let x_95 : vec4<f32> = vs_TEXCOORD1;
  let x_97 : vec4<f32> = vs_TEXCOORD1;
  u_xlat40 = dot(vec3<f32>(x_95.x, x_95.y, x_95.z), vec3<f32>(x_97.x, x_97.y, x_97.z));
  let x_100 : f32 = u_xlat40;
  u_xlat40 = inverseSqrt(x_100);
  let x_104 : f32 = u_xlat40;
  let x_106 : vec4<f32> = vs_TEXCOORD1;
  let x_108 : vec3<f32> = (vec3<f32>(x_104, x_104, x_104) * vec3<f32>(x_106.x, x_106.y, x_106.z));
  let x_109 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_108.x, x_108.y, x_108.z, x_109.w);
  let x_117 : f32 = vs_TEXCOORD2.w;
  u_xlat4.x = x_117;
  let x_122 : f32 = vs_TEXCOORD3.w;
  u_xlat4.y = x_122;
  let x_126 : f32 = vs_TEXCOORD4.w;
  u_xlat4.z = x_126;
  let x_130 : vec3<f32> = u_xlat4;
  let x_135 : vec3<f32> = x_33.x_WorldSpaceCameraPos;
  let x_136 : vec3<f32> = (-(x_130) + x_135);
  let x_137 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_136.x, x_136.y, x_136.z, x_137.w);
  let x_142 : f32 = x_33.unity_MatrixV[0i].z;
  u_xlat6.x = x_142;
  let x_146 : f32 = x_33.unity_MatrixV[1i].z;
  u_xlat6.y = x_146;
  let x_150 : f32 = x_33.unity_MatrixV[2i].z;
  u_xlat6.z = x_150;
  let x_153 : vec4<f32> = u_xlat5;
  let x_155 : vec3<f32> = u_xlat6;
  u_xlat41 = dot(vec3<f32>(x_153.x, x_153.y, x_153.z), x_155);
  let x_157 : vec3<f32> = u_xlat4;
  let x_160 : vec4<f32> = x_33.unity_ShadowFadeCenterAndType;
  let x_163 : vec3<f32> = (x_157 + -(vec3<f32>(x_160.x, x_160.y, x_160.z)));
  let x_164 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_163.x, x_163.y, x_163.z, x_164.w);
  let x_167 : vec4<f32> = u_xlat5;
  let x_169 : vec4<f32> = u_xlat5;
  u_xlat42 = dot(vec3<f32>(x_167.x, x_167.y, x_167.z), vec3<f32>(x_169.x, x_169.y, x_169.z));
  let x_172 : f32 = u_xlat42;
  u_xlat42 = sqrt(x_172);
  let x_174 : f32 = u_xlat41;
  let x_176 : f32 = u_xlat42;
  u_xlat42 = (-(x_174) + x_176);
  let x_179 : f32 = x_33.unity_ShadowFadeCenterAndType.w;
  let x_180 : f32 = u_xlat42;
  let x_182 : f32 = u_xlat41;
  u_xlat41 = ((x_179 * x_180) + x_182);
  let x_184 : f32 = u_xlat41;
  let x_187 : f32 = x_33.x_LightShadowData.z;
  let x_190 : f32 = x_33.x_LightShadowData.w;
  u_xlat41 = ((x_184 * x_187) + x_190);
  let x_192 : f32 = u_xlat41;
  u_xlat41 = clamp(x_192, 0.0f, 1.0f);
  let x_201 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb42 = (x_201 == 1.0f);
  let x_203 : bool = u_xlatb42;
  if (x_203) {
    let x_207 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb42 = (x_207 == 1.0f);
    let x_209 : vec4<f32> = vs_TEXCOORD3;
    let x_213 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_215 : vec3<f32> = (vec3<f32>(x_209.w, x_209.w, x_209.w) * vec3<f32>(x_213.x, x_213.y, x_213.z));
    let x_216 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_215.x, x_215.y, x_215.z, x_216.w);
    let x_219 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_221 : vec4<f32> = vs_TEXCOORD2;
    let x_224 : vec4<f32> = u_xlat5;
    let x_226 : vec3<f32> = ((vec3<f32>(x_219.x, x_219.y, x_219.z) * vec3<f32>(x_221.w, x_221.w, x_221.w)) + vec3<f32>(x_224.x, x_224.y, x_224.z));
    let x_227 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_226.x, x_226.y, x_226.z, x_227.w);
    let x_230 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_232 : vec4<f32> = vs_TEXCOORD4;
    let x_235 : vec4<f32> = u_xlat5;
    let x_237 : vec3<f32> = ((vec3<f32>(x_230.x, x_230.y, x_230.z) * vec3<f32>(x_232.w, x_232.w, x_232.w)) + vec3<f32>(x_235.x, x_235.y, x_235.z));
    let x_238 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_237.x, x_237.y, x_237.z, x_238.w);
    let x_240 : vec4<f32> = u_xlat5;
    let x_243 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_245 : vec3<f32> = (vec3<f32>(x_240.x, x_240.y, x_240.z) + vec3<f32>(x_243.x, x_243.y, x_243.z));
    let x_246 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_245.x, x_245.y, x_245.z, x_246.w);
    let x_248 : bool = u_xlatb42;
    if (x_248) {
      let x_252 : vec4<f32> = u_xlat5;
      x_249 = vec3<f32>(x_252.x, x_252.y, x_252.z);
    } else {
      let x_255 : vec3<f32> = u_xlat4;
      x_249 = x_255;
    }
    let x_256 : vec3<f32> = x_249;
    let x_257 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_256.x, x_256.y, x_256.z, x_257.w);
    let x_259 : vec4<f32> = u_xlat5;
    let x_263 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_265 : vec3<f32> = (vec3<f32>(x_259.x, x_259.y, x_259.z) + -(x_263));
    let x_266 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_265.x, x_265.y, x_265.z, x_266.w);
    let x_268 : vec4<f32> = u_xlat5;
    let x_272 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_273 : vec3<f32> = (vec3<f32>(x_268.x, x_268.y, x_268.z) * x_272);
    let x_274 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_274.x, x_273.x, x_273.y, x_273.z);
    let x_277 : f32 = u_xlat5.y;
    u_xlat42 = ((x_277 * 0.25f) + 0.75f);
    let x_284 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat43 = ((x_284 * 0.5f) + 0.75f);
    let x_288 : f32 = u_xlat42;
    let x_289 : f32 = u_xlat43;
    u_xlat5.x = max(x_288, x_289);
    let x_300 : vec4<f32> = u_xlat5;
    let x_302 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_300.x, x_300.z, x_300.w));
    u_xlat5 = x_302;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_308 : vec4<f32> = u_xlat5;
  let x_310 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat42 = dot(x_308, x_310);
  let x_312 : f32 = u_xlat42;
  u_xlat42 = clamp(x_312, 0.0f, 1.0f);
  let x_315 : vec4<f32> = vs_TEXCOORD7;
  let x_317 : vec4<f32> = vs_TEXCOORD7;
  let x_319 : vec2<f32> = (vec2<f32>(x_315.x, x_315.y) / vec2<f32>(x_317.w, x_317.w));
  let x_320 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_319.x, x_319.y, x_320.z, x_320.w);
  let x_327 : vec4<f32> = u_xlat5;
  let x_329 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_327.x, x_327.y));
  u_xlat43 = x_329.x;
  let x_331 : f32 = u_xlat42;
  let x_332 : f32 = u_xlat43;
  u_xlat42 = (x_331 + -(x_332));
  let x_335 : f32 = u_xlat41;
  let x_336 : f32 = u_xlat42;
  let x_338 : f32 = u_xlat43;
  u_xlat41 = ((x_335 * x_336) + x_338);
  let x_345 : vec4<f32> = vs_TEXCOORD0;
  let x_347 : vec4<f32> = textureSample(x_OcclusionMap, sampler_OcclusionMap, vec2<f32>(x_345.x, x_345.y));
  u_xlat42 = x_347.y;
  let x_351 : f32 = x_33.x_OcclusionStrength;
  u_xlat43 = (-(x_351) + 1.0f);
  let x_354 : f32 = u_xlat42;
  let x_356 : f32 = x_33.x_OcclusionStrength;
  let x_358 : f32 = u_xlat43;
  u_xlat42 = ((x_354 * x_356) + x_358);
  let x_362 : f32 = x_33.x_Glossiness;
  u_xlat43 = (-(x_362) + 1.0f);
  let x_365 : vec4<f32> = u_xlat3;
  let x_367 : vec3<f32> = u_xlat2;
  u_xlat5.x = dot(vec3<f32>(x_365.x, x_365.y, x_365.z), x_367);
  let x_371 : f32 = u_xlat5.x;
  let x_373 : f32 = u_xlat5.x;
  u_xlat5.x = (x_371 + x_373);
  let x_376 : vec3<f32> = u_xlat2;
  let x_377 : vec4<f32> = u_xlat5;
  let x_381 : vec4<f32> = u_xlat3;
  let x_383 : vec3<f32> = ((x_376 * -(vec3<f32>(x_377.x, x_377.x, x_377.x))) + vec3<f32>(x_381.x, x_381.y, x_381.z));
  let x_384 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_383.x, x_383.y, x_383.z, x_384.w);
  let x_386 : f32 = u_xlat41;
  let x_390 : vec4<f32> = x_33.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_386, x_386, x_386) * vec3<f32>(x_390.x, x_390.y, x_390.z));
  let x_396 : f32 = x_33.unity_SpecCube0_ProbePosition.w;
  u_xlatb41 = (0.0f < x_396);
  let x_398 : bool = u_xlatb41;
  if (x_398) {
    let x_401 : vec4<f32> = u_xlat5;
    let x_403 : vec4<f32> = u_xlat5;
    u_xlat41 = dot(vec3<f32>(x_401.x, x_401.y, x_401.z), vec3<f32>(x_403.x, x_403.y, x_403.z));
    let x_406 : f32 = u_xlat41;
    u_xlat41 = inverseSqrt(x_406);
    let x_409 : f32 = u_xlat41;
    let x_411 : vec4<f32> = u_xlat5;
    let x_413 : vec3<f32> = (vec3<f32>(x_409, x_409, x_409) * vec3<f32>(x_411.x, x_411.y, x_411.z));
    let x_414 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_413.x, x_413.y, x_413.z, x_414.w);
    let x_417 : vec3<f32> = u_xlat4;
    let x_421 : vec4<f32> = x_33.unity_SpecCube0_BoxMax;
    u_xlat8 = (-(x_417) + vec3<f32>(x_421.x, x_421.y, x_421.z));
    let x_424 : vec3<f32> = u_xlat8;
    let x_425 : vec4<f32> = u_xlat7;
    u_xlat8 = (x_424 / vec3<f32>(x_425.x, x_425.y, x_425.z));
    let x_429 : vec3<f32> = u_xlat4;
    let x_433 : vec4<f32> = x_33.unity_SpecCube0_BoxMin;
    let x_435 : vec3<f32> = (-(x_429) + vec3<f32>(x_433.x, x_433.y, x_433.z));
    let x_436 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_435.x, x_435.y, x_435.z, x_436.w);
    let x_438 : vec4<f32> = u_xlat9;
    let x_440 : vec4<f32> = u_xlat7;
    let x_442 : vec3<f32> = (vec3<f32>(x_438.x, x_438.y, x_438.z) / vec3<f32>(x_440.x, x_440.y, x_440.z));
    let x_443 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_442.x, x_442.y, x_442.z, x_443.w);
    let x_449 : vec4<f32> = u_xlat7;
    let x_452 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_449.x, x_449.y, x_449.z, x_449.x));
    u_xlatb10 = vec3<bool>(x_452.x, x_452.y, x_452.z);
    let x_455 : vec3<f32> = u_xlat8;
    hlslcc_movcTemp = x_455;
    let x_457 : bool = u_xlatb10.x;
    if (x_457) {
      let x_462 : f32 = u_xlat8.x;
      x_458 = x_462;
    } else {
      let x_465 : f32 = u_xlat9.x;
      x_458 = x_465;
    }
    let x_466 : f32 = x_458;
    hlslcc_movcTemp.x = x_466;
    let x_469 : bool = u_xlatb10.y;
    if (x_469) {
      let x_474 : f32 = u_xlat8.y;
      x_470 = x_474;
    } else {
      let x_477 : f32 = u_xlat9.y;
      x_470 = x_477;
    }
    let x_478 : f32 = x_470;
    hlslcc_movcTemp.y = x_478;
    let x_481 : bool = u_xlatb10.z;
    if (x_481) {
      let x_486 : f32 = u_xlat8.z;
      x_482 = x_486;
    } else {
      let x_489 : f32 = u_xlat9.z;
      x_482 = x_489;
    }
    let x_490 : f32 = x_482;
    hlslcc_movcTemp.z = x_490;
    let x_492 : vec3<f32> = hlslcc_movcTemp;
    u_xlat8 = x_492;
    let x_494 : f32 = u_xlat8.y;
    let x_496 : f32 = u_xlat8.x;
    u_xlat41 = min(x_494, x_496);
    let x_499 : f32 = u_xlat8.z;
    let x_500 : f32 = u_xlat41;
    u_xlat41 = min(x_499, x_500);
    let x_502 : vec3<f32> = u_xlat4;
    let x_504 : vec4<f32> = x_33.unity_SpecCube0_ProbePosition;
    u_xlat8 = (x_502 + -(vec3<f32>(x_504.x, x_504.y, x_504.z)));
    let x_508 : vec4<f32> = u_xlat7;
    let x_510 : f32 = u_xlat41;
    let x_513 : vec3<f32> = u_xlat8;
    let x_514 : vec3<f32> = ((vec3<f32>(x_508.x, x_508.y, x_508.z) * vec3<f32>(x_510, x_510, x_510)) + x_513);
    let x_515 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_514.x, x_514.y, x_514.z, x_515.w);
  } else {
    let x_518 : vec4<f32> = u_xlat5;
    let x_519 : vec3<f32> = vec3<f32>(x_518.x, x_518.y, x_518.z);
    let x_520 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_519.x, x_519.y, x_519.z, x_520.w);
  }
  let x_522 : f32 = u_xlat43;
  u_xlat41 = ((-(x_522) * 0.699999988f) + 1.700000048f);
  let x_528 : f32 = u_xlat41;
  let x_529 : f32 = u_xlat43;
  u_xlat41 = (x_528 * x_529);
  let x_531 : f32 = u_xlat41;
  u_xlat41 = (x_531 * 6.0f);
  let x_542 : vec4<f32> = u_xlat7;
  let x_544 : f32 = u_xlat41;
  let x_545 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_542.x, x_542.y, x_542.z), x_544);
  u_xlat7 = x_545;
  let x_548 : f32 = u_xlat7.w;
  u_xlat44 = (x_548 + -1.0f);
  let x_553 : f32 = x_33.unity_SpecCube0_HDR.w;
  let x_554 : f32 = u_xlat44;
  u_xlat44 = ((x_553 * x_554) + 1.0f);
  let x_557 : f32 = u_xlat44;
  u_xlat44 = log2(x_557);
  let x_559 : f32 = u_xlat44;
  let x_561 : f32 = x_33.unity_SpecCube0_HDR.y;
  u_xlat44 = (x_559 * x_561);
  let x_563 : f32 = u_xlat44;
  u_xlat44 = exp2(x_563);
  let x_565 : f32 = u_xlat44;
  let x_567 : f32 = x_33.unity_SpecCube0_HDR.x;
  u_xlat44 = (x_565 * x_567);
  let x_569 : vec4<f32> = u_xlat7;
  let x_571 : f32 = u_xlat44;
  u_xlat8 = (vec3<f32>(x_569.x, x_569.y, x_569.z) * vec3<f32>(x_571, x_571, x_571));
  let x_576 : f32 = x_33.unity_SpecCube0_BoxMin.w;
  u_xlatb45 = (x_576 < 0.999989986f);
  let x_579 : bool = u_xlatb45;
  if (x_579) {
    let x_584 : f32 = x_33.unity_SpecCube1_ProbePosition.w;
    u_xlatb45 = (0.0f < x_584);
    let x_586 : bool = u_xlatb45;
    if (x_586) {
      let x_590 : vec4<f32> = u_xlat5;
      let x_592 : vec4<f32> = u_xlat5;
      u_xlat45 = dot(vec3<f32>(x_590.x, x_590.y, x_590.z), vec3<f32>(x_592.x, x_592.y, x_592.z));
      let x_595 : f32 = u_xlat45;
      u_xlat45 = inverseSqrt(x_595);
      let x_597 : vec4<f32> = u_xlat5;
      let x_599 : f32 = u_xlat45;
      let x_601 : vec3<f32> = (vec3<f32>(x_597.x, x_597.y, x_597.z) * vec3<f32>(x_599, x_599, x_599));
      let x_602 : vec4<f32> = u_xlat9;
      u_xlat9 = vec4<f32>(x_601.x, x_601.y, x_601.z, x_602.w);
      let x_605 : vec3<f32> = u_xlat4;
      let x_609 : vec4<f32> = x_33.unity_SpecCube1_BoxMax;
      u_xlat10 = (-(x_605) + vec3<f32>(x_609.x, x_609.y, x_609.z));
      let x_612 : vec3<f32> = u_xlat10;
      let x_613 : vec4<f32> = u_xlat9;
      u_xlat10 = (x_612 / vec3<f32>(x_613.x, x_613.y, x_613.z));
      let x_617 : vec3<f32> = u_xlat4;
      let x_621 : vec4<f32> = x_33.unity_SpecCube1_BoxMin;
      u_xlat11 = (-(x_617) + vec3<f32>(x_621.x, x_621.y, x_621.z));
      let x_624 : vec3<f32> = u_xlat11;
      let x_625 : vec4<f32> = u_xlat9;
      u_xlat11 = (x_624 / vec3<f32>(x_625.x, x_625.y, x_625.z));
      let x_629 : vec4<f32> = u_xlat9;
      let x_631 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_629.x, x_629.y, x_629.z, x_629.x));
      u_xlatb12 = vec3<bool>(x_631.x, x_631.y, x_631.z);
      let x_634 : vec3<f32> = u_xlat10;
      hlslcc_movcTemp_1 = x_634;
      let x_636 : bool = u_xlatb12.x;
      if (x_636) {
        let x_641 : f32 = u_xlat10.x;
        x_637 = x_641;
      } else {
        let x_644 : f32 = u_xlat11.x;
        x_637 = x_644;
      }
      let x_645 : f32 = x_637;
      hlslcc_movcTemp_1.x = x_645;
      let x_648 : bool = u_xlatb12.y;
      if (x_648) {
        let x_653 : f32 = u_xlat10.y;
        x_649 = x_653;
      } else {
        let x_656 : f32 = u_xlat11.y;
        x_649 = x_656;
      }
      let x_657 : f32 = x_649;
      hlslcc_movcTemp_1.y = x_657;
      let x_660 : bool = u_xlatb12.z;
      if (x_660) {
        let x_665 : f32 = u_xlat10.z;
        x_661 = x_665;
      } else {
        let x_668 : f32 = u_xlat11.z;
        x_661 = x_668;
      }
      let x_669 : f32 = x_661;
      hlslcc_movcTemp_1.z = x_669;
      let x_671 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat10 = x_671;
      let x_673 : f32 = u_xlat10.y;
      let x_675 : f32 = u_xlat10.x;
      u_xlat45 = min(x_673, x_675);
      let x_678 : f32 = u_xlat10.z;
      let x_679 : f32 = u_xlat45;
      u_xlat45 = min(x_678, x_679);
      let x_681 : vec3<f32> = u_xlat4;
      let x_683 : vec4<f32> = x_33.unity_SpecCube1_ProbePosition;
      u_xlat4 = (x_681 + -(vec3<f32>(x_683.x, x_683.y, x_683.z)));
      let x_687 : vec4<f32> = u_xlat9;
      let x_689 : f32 = u_xlat45;
      let x_692 : vec3<f32> = u_xlat4;
      let x_693 : vec3<f32> = ((vec3<f32>(x_687.x, x_687.y, x_687.z) * vec3<f32>(x_689, x_689, x_689)) + x_692);
      let x_694 : vec4<f32> = u_xlat5;
      u_xlat5 = vec4<f32>(x_693.x, x_693.y, x_693.z, x_694.w);
    }
    let x_700 : vec4<f32> = u_xlat5;
    let x_702 : f32 = u_xlat41;
    let x_703 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_700.x, x_700.y, x_700.z), x_702);
    u_xlat9 = x_703;
    let x_705 : f32 = u_xlat9.w;
    u_xlat41 = (x_705 + -1.0f);
    let x_709 : f32 = x_33.unity_SpecCube1_HDR.w;
    let x_710 : f32 = u_xlat41;
    u_xlat41 = ((x_709 * x_710) + 1.0f);
    let x_713 : f32 = u_xlat41;
    u_xlat41 = log2(x_713);
    let x_715 : f32 = u_xlat41;
    let x_717 : f32 = x_33.unity_SpecCube1_HDR.y;
    u_xlat41 = (x_715 * x_717);
    let x_719 : f32 = u_xlat41;
    u_xlat41 = exp2(x_719);
    let x_721 : f32 = u_xlat41;
    let x_723 : f32 = x_33.unity_SpecCube1_HDR.x;
    u_xlat41 = (x_721 * x_723);
    let x_725 : vec4<f32> = u_xlat9;
    let x_727 : f32 = u_xlat41;
    u_xlat4 = (vec3<f32>(x_725.x, x_725.y, x_725.z) * vec3<f32>(x_727, x_727, x_727));
    let x_730 : f32 = u_xlat44;
    let x_732 : vec4<f32> = u_xlat7;
    let x_735 : vec3<f32> = u_xlat4;
    let x_737 : vec3<f32> = ((vec3<f32>(x_730, x_730, x_730) * vec3<f32>(x_732.x, x_732.y, x_732.z)) + -(x_735));
    let x_738 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_737.x, x_737.y, x_737.z, x_738.w);
    let x_741 : vec4<f32> = x_33.unity_SpecCube0_BoxMin;
    let x_743 : vec4<f32> = u_xlat5;
    let x_746 : vec3<f32> = u_xlat4;
    u_xlat8 = ((vec3<f32>(x_741.w, x_741.w, x_741.w) * vec3<f32>(x_743.x, x_743.y, x_743.z)) + x_746);
  }
  let x_748 : f32 = u_xlat42;
  let x_750 : vec3<f32> = u_xlat8;
  u_xlat4 = (vec3<f32>(x_748, x_748, x_748) * x_750);
  let x_752 : vec4<f32> = vs_TEXCOORD1;
  let x_755 : f32 = u_xlat40;
  let x_759 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  let x_761 : vec3<f32> = ((-(vec3<f32>(x_752.x, x_752.y, x_752.z)) * vec3<f32>(x_755, x_755, x_755)) + vec3<f32>(x_759.x, x_759.y, x_759.z));
  let x_762 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_761.x, x_761.y, x_761.z, x_762.w);
  let x_764 : vec4<f32> = u_xlat5;
  let x_766 : vec4<f32> = u_xlat5;
  u_xlat40 = dot(vec3<f32>(x_764.x, x_764.y, x_764.z), vec3<f32>(x_766.x, x_766.y, x_766.z));
  let x_769 : f32 = u_xlat40;
  u_xlat40 = max(x_769, 0.001f);
  let x_772 : f32 = u_xlat40;
  u_xlat40 = inverseSqrt(x_772);
  let x_774 : f32 = u_xlat40;
  let x_776 : vec4<f32> = u_xlat5;
  let x_778 : vec3<f32> = (vec3<f32>(x_774, x_774, x_774) * vec3<f32>(x_776.x, x_776.y, x_776.z));
  let x_779 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_778.x, x_778.y, x_778.z, x_779.w);
  let x_781 : vec3<f32> = u_xlat2;
  let x_782 : vec4<f32> = u_xlat3;
  u_xlat40 = dot(x_781, -(vec3<f32>(x_782.x, x_782.y, x_782.z)));
  let x_786 : vec3<f32> = u_xlat2;
  let x_788 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  u_xlat41 = dot(x_786, vec3<f32>(x_788.x, x_788.y, x_788.z));
  let x_791 : f32 = u_xlat41;
  u_xlat41 = clamp(x_791, 0.0f, 1.0f);
  let x_793 : vec3<f32> = u_xlat2;
  let x_794 : vec4<f32> = u_xlat5;
  u_xlat2.x = dot(x_793, vec3<f32>(x_794.x, x_794.y, x_794.z));
  let x_799 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_799, 0.0f, 1.0f);
  let x_804 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  let x_806 : vec4<f32> = u_xlat5;
  u_xlat15.x = dot(vec3<f32>(x_804.x, x_804.y, x_804.z), vec3<f32>(x_806.x, x_806.y, x_806.z));
  let x_811 : f32 = u_xlat15.x;
  u_xlat15.x = clamp(x_811, 0.0f, 1.0f);
  let x_816 : f32 = u_xlat15.x;
  let x_818 : f32 = u_xlat15.x;
  u_xlat28 = (x_816 * x_818);
  let x_820 : f32 = u_xlat28;
  let x_822 : f32 = u_xlat43;
  u_xlat28 = dot(vec2<f32>(x_820, x_820), vec2<f32>(x_822, x_822));
  let x_825 : f32 = u_xlat28;
  u_xlat28 = (x_825 + -0.5f);
  let x_828 : f32 = u_xlat41;
  u_xlat3.x = (-(x_828) + 1.0f);
  let x_834 : f32 = u_xlat3.x;
  let x_836 : f32 = u_xlat3.x;
  u_xlat16 = (x_834 * x_836);
  let x_838 : f32 = u_xlat16;
  let x_839 : f32 = u_xlat16;
  u_xlat16 = (x_838 * x_839);
  let x_842 : f32 = u_xlat3.x;
  let x_843 : f32 = u_xlat16;
  u_xlat3.x = (x_842 * x_843);
  let x_846 : f32 = u_xlat28;
  let x_848 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_846 * x_848) + 1.0f);
  let x_852 : f32 = u_xlat40;
  u_xlat16 = (-(abs(x_852)) + 1.0f);
  let x_857 : f32 = u_xlat16;
  let x_858 : f32 = u_xlat16;
  u_xlat29 = (x_857 * x_858);
  let x_860 : f32 = u_xlat29;
  let x_861 : f32 = u_xlat29;
  u_xlat29 = (x_860 * x_861);
  let x_863 : f32 = u_xlat16;
  let x_864 : f32 = u_xlat29;
  u_xlat16 = (x_863 * x_864);
  let x_866 : f32 = u_xlat28;
  let x_867 : f32 = u_xlat16;
  u_xlat28 = ((x_866 * x_867) + 1.0f);
  let x_870 : f32 = u_xlat28;
  let x_872 : f32 = u_xlat3.x;
  u_xlat28 = (x_870 * x_872);
  let x_874 : f32 = u_xlat41;
  let x_875 : f32 = u_xlat28;
  u_xlat28 = (x_874 * x_875);
  let x_877 : f32 = u_xlat43;
  let x_878 : f32 = u_xlat43;
  u_xlat3.x = (x_877 * x_878);
  let x_882 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_882, 0.002f);
  let x_887 : f32 = u_xlat3.x;
  u_xlat29 = (-(x_887) + 1.0f);
  let x_890 : f32 = u_xlat40;
  let x_892 : f32 = u_xlat29;
  let x_895 : f32 = u_xlat3.x;
  u_xlat42 = ((abs(x_890) * x_892) + x_895);
  let x_897 : f32 = u_xlat41;
  let x_898 : f32 = u_xlat29;
  let x_901 : f32 = u_xlat3.x;
  u_xlat29 = ((x_897 * x_898) + x_901);
  let x_903 : f32 = u_xlat40;
  let x_905 : f32 = u_xlat29;
  u_xlat40 = (abs(x_903) * x_905);
  let x_907 : f32 = u_xlat41;
  let x_908 : f32 = u_xlat42;
  let x_910 : f32 = u_xlat40;
  u_xlat40 = ((x_907 * x_908) + x_910);
  let x_912 : f32 = u_xlat40;
  u_xlat40 = (x_912 + 0.00001f);
  let x_915 : f32 = u_xlat40;
  u_xlat40 = (0.5f / x_915);
  let x_918 : f32 = u_xlat3.x;
  let x_920 : f32 = u_xlat3.x;
  u_xlat29 = (x_918 * x_920);
  let x_923 : f32 = u_xlat2.x;
  let x_924 : f32 = u_xlat29;
  let x_927 : f32 = u_xlat2.x;
  u_xlat42 = ((x_923 * x_924) + -(x_927));
  let x_930 : f32 = u_xlat42;
  let x_932 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_930 * x_932) + 1.0f);
  let x_936 : f32 = u_xlat29;
  u_xlat29 = (x_936 * 0.318309873f);
  let x_940 : f32 = u_xlat2.x;
  let x_942 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_940 * x_942) + 0.0000001f);
  let x_947 : f32 = u_xlat29;
  let x_949 : f32 = u_xlat2.x;
  u_xlat2.x = (x_947 / x_949);
  let x_952 : f32 = u_xlat40;
  let x_954 : f32 = u_xlat2.x;
  u_xlat40 = (x_952 * x_954);
  let x_956 : f32 = u_xlat41;
  let x_957 : f32 = u_xlat40;
  u_xlat40 = (x_956 * x_957);
  let x_959 : f32 = u_xlat40;
  u_xlat40 = (x_959 * 3.141592741f);
  let x_962 : f32 = u_xlat40;
  u_xlat40 = max(x_962, 0.0f);
  let x_965 : f32 = u_xlat3.x;
  let x_967 : f32 = u_xlat3.x;
  u_xlat2.x = ((x_965 * x_967) + 1.0f);
  let x_972 : f32 = u_xlat2.x;
  u_xlat2.x = (1.0f / x_972);
  let x_975 : vec3<f32> = u_xlat0;
  let x_976 : vec3<f32> = u_xlat0;
  u_xlat41 = dot(x_975, x_976);
  let x_978 : f32 = u_xlat41;
  u_xlatb41 = !((x_978 == 0.0f));
  let x_980 : bool = u_xlatb41;
  u_xlat41 = select(0.0f, 1.0f, x_980);
  let x_982 : f32 = u_xlat40;
  let x_983 : f32 = u_xlat41;
  u_xlat40 = (x_982 * x_983);
  let x_985 : f32 = u_xlat39;
  let x_988 : f32 = x_33.x_Glossiness;
  u_xlat39 = (-(x_985) + x_988);
  let x_990 : f32 = u_xlat39;
  u_xlat39 = (x_990 + 1.0f);
  let x_992 : f32 = u_xlat39;
  u_xlat39 = clamp(x_992, 0.0f, 1.0f);
  let x_994 : f32 = u_xlat28;
  let x_996 : vec3<f32> = u_xlat6;
  let x_997 : vec3<f32> = (vec3<f32>(x_994, x_994, x_994) * x_996);
  let x_998 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_997.x, x_998.y, x_997.y, x_997.z);
  let x_1000 : vec3<f32> = u_xlat6;
  let x_1001 : f32 = u_xlat40;
  let x_1003 : vec3<f32> = (x_1000 * vec3<f32>(x_1001, x_1001, x_1001));
  let x_1004 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1003.x, x_1003.y, x_1003.z, x_1004.w);
  let x_1007 : f32 = u_xlat15.x;
  u_xlat40 = (-(x_1007) + 1.0f);
  let x_1010 : f32 = u_xlat40;
  let x_1011 : f32 = u_xlat40;
  u_xlat15.x = (x_1010 * x_1011);
  let x_1015 : f32 = u_xlat15.x;
  let x_1017 : f32 = u_xlat15.x;
  u_xlat15.x = (x_1015 * x_1017);
  let x_1020 : f32 = u_xlat40;
  let x_1022 : f32 = u_xlat15.x;
  u_xlat40 = (x_1020 * x_1022);
  let x_1024 : vec3<f32> = u_xlat0;
  u_xlat15 = (-(x_1024) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1028 : vec3<f32> = u_xlat15;
  let x_1029 : f32 = u_xlat40;
  let x_1032 : vec3<f32> = u_xlat0;
  u_xlat15 = ((x_1028 * vec3<f32>(x_1029, x_1029, x_1029)) + x_1032);
  let x_1034 : vec3<f32> = u_xlat15;
  let x_1035 : vec4<f32> = u_xlat5;
  u_xlat15 = (x_1034 * vec3<f32>(x_1035.x, x_1035.y, x_1035.z));
  let x_1038 : vec3<f32> = u_xlat1;
  let x_1039 : vec4<f32> = u_xlat3;
  let x_1042 : vec3<f32> = u_xlat15;
  u_xlat1 = ((x_1038 * vec3<f32>(x_1039.x, x_1039.z, x_1039.w)) + x_1042);
  let x_1044 : vec3<f32> = u_xlat4;
  let x_1045 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1044 * vec3<f32>(x_1045.x, x_1045.x, x_1045.x));
  let x_1048 : vec3<f32> = u_xlat0;
  let x_1050 : f32 = u_xlat39;
  let x_1052 : vec3<f32> = (-(x_1048) + vec3<f32>(x_1050, x_1050, x_1050));
  let x_1053 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1052.x, x_1053.y, x_1052.y, x_1052.z);
  let x_1055 : f32 = u_xlat16;
  let x_1057 : vec4<f32> = u_xlat3;
  let x_1060 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1055, x_1055, x_1055) * vec3<f32>(x_1057.x, x_1057.z, x_1057.w)) + x_1060);
  let x_1062 : vec3<f32> = u_xlat2;
  let x_1063 : vec3<f32> = u_xlat0;
  let x_1065 : vec3<f32> = u_xlat1;
  u_xlat0 = ((x_1062 * x_1063) + x_1065);
  let x_1072 : vec4<f32> = vs_TEXCOORD0;
  let x_1074 : vec4<f32> = textureSample(x_EmissionMap, sampler_EmissionMap, vec2<f32>(x_1072.x, x_1072.y));
  u_xlat1 = vec3<f32>(x_1074.x, x_1074.y, x_1074.z);
  let x_1078 : vec3<f32> = u_xlat1;
  let x_1081 : vec4<f32> = x_33.x_EmissionColor;
  let x_1084 : vec3<f32> = u_xlat0;
  let x_1085 : vec3<f32> = ((x_1078 * vec3<f32>(x_1081.x, x_1081.y, x_1081.z)) + x_1084);
  let x_1086 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1085.x, x_1085.y, x_1085.z, x_1086.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(5) vs_TEXCOORD7_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

