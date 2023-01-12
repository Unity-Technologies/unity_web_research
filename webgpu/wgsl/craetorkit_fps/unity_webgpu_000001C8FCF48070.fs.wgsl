struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
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
  x_Color : vec4<f32>,
  x_Metallic : f32,
  x_Glossiness : f32,
  @size(8)
  padding_3 : u32,
  unity_WorldToLight : mat4x4<f32>,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_32 : PGlobals;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(2) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(4) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(3) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(5) var sampler_ShadowMapTexture : sampler_comparison;

@group(0) @binding(1) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(7) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat21 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat23 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlatb22 : bool;
  var x_297 : vec3<f32>;
  var txVec0 : vec4<f32>;
  var u_xlat24 : f32;
  var u_xlat9 : f32;
  var u_xlat16 : f32;
  var u_xlat10 : f32;
  var u_xlat17 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y));
  u_xlat0 = x_25;
  let x_27 : vec4<f32> = u_xlat0;
  let x_37 : vec4<f32> = x_32.x_Color;
  u_xlat1 = (x_27 * x_37);
  let x_39 : vec4<f32> = u_xlat0;
  let x_42 : vec4<f32> = x_32.x_Color;
  let x_47 : vec3<f32> = ((vec3<f32>(x_39.x, x_39.y, x_39.z) * vec3<f32>(x_42.x, x_42.y, x_42.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_48 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_47.x, x_47.y, x_47.z, x_48.w);
  let x_53 : f32 = x_32.x_Metallic;
  let x_55 : f32 = x_32.x_Metallic;
  let x_57 : f32 = x_32.x_Metallic;
  let x_58 : vec3<f32> = vec3<f32>(x_53, x_55, x_57);
  let x_63 : vec4<f32> = u_xlat0;
  let x_68 : vec3<f32> = ((vec3<f32>(x_58.x, x_58.y, x_58.z) * vec3<f32>(x_63.x, x_63.y, x_63.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_69 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_68.x, x_68.y, x_68.z, x_69.w);
  let x_74 : f32 = x_32.x_Metallic;
  u_xlat21 = ((-(x_74) * 0.959999979f) + 0.959999979f);
  let x_79 : f32 = u_xlat21;
  let x_81 : vec4<f32> = u_xlat1;
  let x_83 : vec3<f32> = (vec3<f32>(x_79, x_79, x_79) * vec3<f32>(x_81.x, x_81.y, x_81.z));
  let x_84 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_83.x, x_83.y, x_83.z, x_84.w);
  let x_88 : vec4<f32> = vs_TEXCOORD4;
  let x_90 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2.x = dot(vec3<f32>(x_88.x, x_88.y, x_88.z), vec3<f32>(x_90.x, x_90.y, x_90.z));
  let x_97 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_97);
  let x_100 : vec4<f32> = u_xlat2;
  let x_102 : vec4<f32> = vs_TEXCOORD4;
  let x_104 : vec3<f32> = (vec3<f32>(x_100.x, x_100.x, x_100.x) * vec3<f32>(x_102.x, x_102.y, x_102.z));
  let x_105 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_104.x, x_104.y, x_104.z, x_105.w);
  let x_109 : vec4<f32> = vs_TEXCOORD1;
  let x_111 : vec4<f32> = vs_TEXCOORD1;
  u_xlat23 = dot(vec3<f32>(x_109.x, x_109.y, x_109.z), vec3<f32>(x_111.x, x_111.y, x_111.z));
  let x_114 : f32 = u_xlat23;
  u_xlat23 = inverseSqrt(x_114);
  let x_118 : f32 = u_xlat23;
  let x_120 : vec4<f32> = vs_TEXCOORD1;
  u_xlat3 = (vec3<f32>(x_118, x_118, x_118) * vec3<f32>(x_120.x, x_120.y, x_120.z));
  let x_123 : vec4<f32> = u_xlat1;
  let x_125 : vec4<f32> = u_xlat1;
  let x_127 : vec3<f32> = (vec3<f32>(x_123.w, x_123.w, x_123.w) * vec3<f32>(x_125.x, x_125.y, x_125.z));
  let x_128 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_127.x, x_127.y, x_127.z, x_128.w);
  let x_130 : f32 = u_xlat21;
  u_xlat23 = (-(x_130) + 1.0f);
  let x_138 : f32 = u_xlat1.w;
  let x_139 : f32 = u_xlat21;
  let x_141 : f32 = u_xlat23;
  SV_Target0.w = ((x_138 * x_139) + x_141);
  let x_148 : vec3<f32> = vs_TEXCOORD5;
  let x_153 : vec4<f32> = x_32.unity_WorldToLight[1i];
  u_xlat4 = (vec3<f32>(x_148.y, x_148.y, x_148.y) * vec3<f32>(x_153.x, x_153.y, x_153.z));
  let x_158 : vec4<f32> = x_32.unity_WorldToLight[0i];
  let x_160 : vec3<f32> = vs_TEXCOORD5;
  let x_163 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_158.x, x_158.y, x_158.z) * vec3<f32>(x_160.x, x_160.x, x_160.x)) + x_163);
  let x_167 : vec4<f32> = x_32.unity_WorldToLight[2i];
  let x_169 : vec3<f32> = vs_TEXCOORD5;
  let x_172 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_167.x, x_167.y, x_167.z) * vec3<f32>(x_169.z, x_169.z, x_169.z)) + x_172);
  let x_174 : vec3<f32> = u_xlat4;
  let x_177 : vec4<f32> = x_32.unity_WorldToLight[3i];
  u_xlat4 = (x_174 + vec3<f32>(x_177.x, x_177.y, x_177.z));
  let x_181 : vec3<f32> = vs_TEXCOORD5;
  let x_185 : vec3<f32> = x_32.x_WorldSpaceCameraPos;
  let x_186 : vec3<f32> = (-(x_181) + x_185);
  let x_187 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_186.x, x_186.y, x_186.z, x_187.w);
  let x_193 : f32 = x_32.unity_MatrixV[0i].z;
  u_xlat6.x = x_193;
  let x_196 : f32 = x_32.unity_MatrixV[1i].z;
  u_xlat6.y = x_196;
  let x_200 : f32 = x_32.unity_MatrixV[2i].z;
  u_xlat6.z = x_200;
  let x_202 : vec4<f32> = u_xlat5;
  let x_204 : vec3<f32> = u_xlat6;
  u_xlat21 = dot(vec3<f32>(x_202.x, x_202.y, x_202.z), x_204);
  let x_206 : vec3<f32> = vs_TEXCOORD5;
  let x_209 : vec4<f32> = x_32.unity_ShadowFadeCenterAndType;
  let x_212 : vec3<f32> = (x_206 + -(vec3<f32>(x_209.x, x_209.y, x_209.z)));
  let x_213 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_212.x, x_212.y, x_212.z, x_213.w);
  let x_216 : vec4<f32> = u_xlat5;
  let x_218 : vec4<f32> = u_xlat5;
  u_xlat22 = dot(vec3<f32>(x_216.x, x_216.y, x_216.z), vec3<f32>(x_218.x, x_218.y, x_218.z));
  let x_221 : f32 = u_xlat22;
  u_xlat22 = sqrt(x_221);
  let x_223 : f32 = u_xlat21;
  let x_225 : f32 = u_xlat22;
  u_xlat22 = (-(x_223) + x_225);
  let x_228 : f32 = x_32.unity_ShadowFadeCenterAndType.w;
  let x_229 : f32 = u_xlat22;
  let x_231 : f32 = u_xlat21;
  u_xlat21 = ((x_228 * x_229) + x_231);
  let x_233 : f32 = u_xlat21;
  let x_236 : f32 = x_32.x_LightShadowData.z;
  let x_239 : f32 = x_32.x_LightShadowData.w;
  u_xlat21 = ((x_233 * x_236) + x_239);
  let x_241 : f32 = u_xlat21;
  u_xlat21 = clamp(x_241, 0.0f, 1.0f);
  let x_249 : f32 = x_32.unity_ProbeVolumeParams.x;
  u_xlatb22 = (x_249 == 1.0f);
  let x_251 : bool = u_xlatb22;
  if (x_251) {
    let x_255 : f32 = x_32.unity_ProbeVolumeParams.y;
    u_xlatb22 = (x_255 == 1.0f);
    let x_257 : vec3<f32> = vs_TEXCOORD5;
    let x_261 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[1i];
    let x_263 : vec3<f32> = (vec3<f32>(x_257.y, x_257.y, x_257.y) * vec3<f32>(x_261.x, x_261.y, x_261.z));
    let x_264 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_263.x, x_263.y, x_263.z, x_264.w);
    let x_267 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[0i];
    let x_269 : vec3<f32> = vs_TEXCOORD5;
    let x_272 : vec4<f32> = u_xlat5;
    let x_274 : vec3<f32> = ((vec3<f32>(x_267.x, x_267.y, x_267.z) * vec3<f32>(x_269.x, x_269.x, x_269.x)) + vec3<f32>(x_272.x, x_272.y, x_272.z));
    let x_275 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_274.x, x_274.y, x_274.z, x_275.w);
    let x_278 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[2i];
    let x_280 : vec3<f32> = vs_TEXCOORD5;
    let x_283 : vec4<f32> = u_xlat5;
    let x_285 : vec3<f32> = ((vec3<f32>(x_278.x, x_278.y, x_278.z) * vec3<f32>(x_280.z, x_280.z, x_280.z)) + vec3<f32>(x_283.x, x_283.y, x_283.z));
    let x_286 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_285.x, x_285.y, x_285.z, x_286.w);
    let x_288 : vec4<f32> = u_xlat5;
    let x_291 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[3i];
    let x_293 : vec3<f32> = (vec3<f32>(x_288.x, x_288.y, x_288.z) + vec3<f32>(x_291.x, x_291.y, x_291.z));
    let x_294 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_293.x, x_293.y, x_293.z, x_294.w);
    let x_296 : bool = u_xlatb22;
    if (x_296) {
      let x_300 : vec4<f32> = u_xlat5;
      x_297 = vec3<f32>(x_300.x, x_300.y, x_300.z);
    } else {
      let x_303 : vec3<f32> = vs_TEXCOORD5;
      x_297 = x_303;
    }
    let x_304 : vec3<f32> = x_297;
    let x_305 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
    let x_307 : vec4<f32> = u_xlat5;
    let x_311 : vec3<f32> = x_32.unity_ProbeVolumeMin;
    let x_313 : vec3<f32> = (vec3<f32>(x_307.x, x_307.y, x_307.z) + -(x_311));
    let x_314 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_313.x, x_313.y, x_313.z, x_314.w);
    let x_316 : vec4<f32> = u_xlat5;
    let x_320 : vec3<f32> = x_32.unity_ProbeVolumeSizeInv;
    let x_321 : vec3<f32> = (vec3<f32>(x_316.x, x_316.y, x_316.z) * x_320);
    let x_322 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_322.x, x_321.x, x_321.y, x_321.z);
    let x_325 : f32 = u_xlat5.y;
    u_xlat22 = ((x_325 * 0.25f) + 0.75f);
    let x_331 : f32 = x_32.unity_ProbeVolumeParams.z;
    u_xlat23 = ((x_331 * 0.5f) + 0.75f);
    let x_335 : f32 = u_xlat22;
    let x_336 : f32 = u_xlat23;
    u_xlat5.x = max(x_335, x_336);
    let x_347 : vec4<f32> = u_xlat5;
    let x_349 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_347.x, x_347.z, x_347.w));
    u_xlat5 = x_349;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_355 : vec4<f32> = u_xlat5;
  let x_357 : vec4<f32> = x_32.unity_OcclusionMaskSelector;
  u_xlat22 = dot(x_355, x_357);
  let x_359 : f32 = u_xlat22;
  u_xlat22 = clamp(x_359, 0.0f, 1.0f);
  let x_361 : vec3<f32> = vs_TEXCOORD5;
  let x_363 : vec4<f32> = x_32.x_LightPositionRange;
  let x_366 : vec3<f32> = (x_361 + -(vec3<f32>(x_363.x, x_363.y, x_363.z)));
  let x_367 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_366.x, x_366.y, x_366.z, x_367.w);
  let x_370 : f32 = u_xlat5.y;
  let x_373 : f32 = u_xlat5.x;
  u_xlat23 = max(abs(x_370), abs(x_373));
  let x_377 : f32 = u_xlat5.z;
  let x_379 : f32 = u_xlat23;
  u_xlat23 = max(abs(x_377), x_379);
  let x_381 : f32 = u_xlat23;
  let x_383 : f32 = x_32.x_LightProjectionParams.z;
  u_xlat23 = (x_381 + -(x_383));
  let x_386 : f32 = u_xlat23;
  u_xlat23 = max(x_386, 0.00001f);
  let x_389 : f32 = u_xlat23;
  let x_391 : f32 = x_32.x_LightProjectionParams.w;
  u_xlat23 = (x_389 * x_391);
  let x_394 : f32 = x_32.x_LightProjectionParams.y;
  let x_395 : f32 = u_xlat23;
  u_xlat23 = (x_394 / x_395);
  let x_397 : f32 = u_xlat23;
  let x_399 : f32 = x_32.x_LightProjectionParams.x;
  u_xlat23 = (x_397 + -(x_399));
  let x_402 : f32 = u_xlat23;
  u_xlat23 = (-(x_402) + 1.0f);
  let x_406 : vec4<f32> = u_xlat5;
  let x_407 : vec3<f32> = vec3<f32>(x_406.x, x_406.y, x_406.z);
  let x_408 : f32 = u_xlat23;
  txVec0 = vec4<f32>(x_407.x, x_407.y, x_407.z, x_408);
  let x_421 : vec4<f32> = txVec0;
  let x_423 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_421.xyz, x_421.w);
  u_xlat23 = x_423;
  let x_426 : f32 = x_32.x_LightShadowData.x;
  u_xlat24 = (-(x_426) + 1.0f);
  let x_429 : f32 = u_xlat23;
  let x_430 : f32 = u_xlat24;
  let x_433 : f32 = x_32.x_LightShadowData.x;
  u_xlat23 = ((x_429 * x_430) + x_433);
  let x_435 : f32 = u_xlat22;
  let x_436 : f32 = u_xlat23;
  u_xlat22 = (x_435 + -(x_436));
  let x_439 : f32 = u_xlat21;
  let x_440 : f32 = u_xlat22;
  let x_442 : f32 = u_xlat23;
  u_xlat21 = ((x_439 * x_440) + x_442);
  let x_444 : vec3<f32> = u_xlat4;
  let x_445 : vec3<f32> = u_xlat4;
  u_xlat22 = dot(x_444, x_445);
  let x_452 : f32 = u_xlat22;
  let x_454 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_452, x_452));
  u_xlat22 = x_454.x;
  let x_456 : f32 = u_xlat21;
  let x_457 : f32 = u_xlat22;
  u_xlat21 = (x_456 * x_457);
  let x_462 : f32 = vs_TEXCOORD2.w;
  u_xlat4.x = x_462;
  let x_466 : f32 = vs_TEXCOORD3.w;
  u_xlat4.y = x_466;
  let x_469 : f32 = vs_TEXCOORD4.w;
  u_xlat4.z = x_469;
  let x_471 : vec3<f32> = u_xlat4;
  let x_472 : vec3<f32> = u_xlat4;
  u_xlat22 = dot(x_471, x_472);
  let x_474 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_474);
  let x_476 : f32 = u_xlat22;
  let x_478 : vec3<f32> = u_xlat4;
  let x_479 : vec3<f32> = (vec3<f32>(x_476, x_476, x_476) * x_478);
  let x_480 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_479.x, x_479.y, x_479.z, x_480.w);
  let x_482 : f32 = u_xlat21;
  let x_486 : vec4<f32> = x_32.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_482, x_482, x_482) * vec3<f32>(x_486.x, x_486.y, x_486.z));
  let x_491 : f32 = x_32.x_Glossiness;
  u_xlat21 = (-(x_491) + 1.0f);
  let x_494 : vec3<f32> = u_xlat4;
  let x_495 : f32 = u_xlat22;
  let x_498 : vec3<f32> = u_xlat3;
  u_xlat4 = ((x_494 * vec3<f32>(x_495, x_495, x_495)) + -(x_498));
  let x_501 : vec3<f32> = u_xlat4;
  let x_502 : vec3<f32> = u_xlat4;
  u_xlat22 = dot(x_501, x_502);
  let x_504 : f32 = u_xlat22;
  u_xlat22 = max(x_504, 0.001f);
  let x_507 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_507);
  let x_509 : f32 = u_xlat22;
  let x_511 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_509, x_509, x_509) * x_511);
  let x_513 : vec4<f32> = u_xlat2;
  let x_515 : vec3<f32> = u_xlat3;
  u_xlat22 = dot(vec3<f32>(x_513.x, x_513.y, x_513.z), -(x_515));
  let x_518 : vec4<f32> = u_xlat2;
  let x_520 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_518.x, x_518.y, x_518.z), vec3<f32>(x_520.x, x_520.y, x_520.z));
  let x_523 : f32 = u_xlat23;
  u_xlat23 = clamp(x_523, 0.0f, 1.0f);
  let x_525 : vec4<f32> = u_xlat2;
  let x_527 : vec3<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_525.x, x_525.y, x_525.z), x_527);
  let x_531 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_531, 0.0f, 1.0f);
  let x_535 : vec4<f32> = u_xlat5;
  let x_537 : vec3<f32> = u_xlat4;
  u_xlat9 = dot(vec3<f32>(x_535.x, x_535.y, x_535.z), x_537);
  let x_539 : f32 = u_xlat9;
  u_xlat9 = clamp(x_539, 0.0f, 1.0f);
  let x_542 : f32 = u_xlat9;
  let x_543 : f32 = u_xlat9;
  u_xlat16 = (x_542 * x_543);
  let x_545 : f32 = u_xlat16;
  let x_547 : f32 = u_xlat21;
  u_xlat16 = dot(vec2<f32>(x_545, x_545), vec2<f32>(x_547, x_547));
  let x_550 : f32 = u_xlat16;
  u_xlat16 = (x_550 + -0.5f);
  let x_553 : f32 = u_xlat23;
  u_xlat3.x = (-(x_553) + 1.0f);
  let x_559 : f32 = u_xlat3.x;
  let x_561 : f32 = u_xlat3.x;
  u_xlat10 = (x_559 * x_561);
  let x_563 : f32 = u_xlat10;
  let x_564 : f32 = u_xlat10;
  u_xlat10 = (x_563 * x_564);
  let x_567 : f32 = u_xlat3.x;
  let x_568 : f32 = u_xlat10;
  u_xlat3.x = (x_567 * x_568);
  let x_571 : f32 = u_xlat16;
  let x_573 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_571 * x_573) + 1.0f);
  let x_577 : f32 = u_xlat22;
  u_xlat10 = (-(abs(x_577)) + 1.0f);
  let x_582 : f32 = u_xlat10;
  let x_583 : f32 = u_xlat10;
  u_xlat17 = (x_582 * x_583);
  let x_585 : f32 = u_xlat17;
  let x_586 : f32 = u_xlat17;
  u_xlat17 = (x_585 * x_586);
  let x_588 : f32 = u_xlat10;
  let x_589 : f32 = u_xlat17;
  u_xlat10 = (x_588 * x_589);
  let x_591 : f32 = u_xlat16;
  let x_592 : f32 = u_xlat10;
  u_xlat16 = ((x_591 * x_592) + 1.0f);
  let x_595 : f32 = u_xlat16;
  let x_597 : f32 = u_xlat3.x;
  u_xlat16 = (x_595 * x_597);
  let x_599 : f32 = u_xlat23;
  let x_600 : f32 = u_xlat16;
  u_xlat16 = (x_599 * x_600);
  let x_602 : f32 = u_xlat21;
  let x_603 : f32 = u_xlat21;
  u_xlat21 = (x_602 * x_603);
  let x_605 : f32 = u_xlat21;
  u_xlat21 = max(x_605, 0.002f);
  let x_608 : f32 = u_xlat21;
  u_xlat3.x = (-(x_608) + 1.0f);
  let x_612 : f32 = u_xlat22;
  let x_615 : f32 = u_xlat3.x;
  let x_617 : f32 = u_xlat21;
  u_xlat10 = ((abs(x_612) * x_615) + x_617);
  let x_619 : f32 = u_xlat23;
  let x_621 : f32 = u_xlat3.x;
  let x_623 : f32 = u_xlat21;
  u_xlat3.x = ((x_619 * x_621) + x_623);
  let x_626 : f32 = u_xlat22;
  let x_629 : f32 = u_xlat3.x;
  u_xlat22 = (abs(x_626) * x_629);
  let x_631 : f32 = u_xlat23;
  let x_632 : f32 = u_xlat10;
  let x_634 : f32 = u_xlat22;
  u_xlat22 = ((x_631 * x_632) + x_634);
  let x_636 : f32 = u_xlat22;
  u_xlat22 = (x_636 + 0.00001f);
  let x_638 : f32 = u_xlat22;
  u_xlat22 = (0.5f / x_638);
  let x_640 : f32 = u_xlat21;
  let x_641 : f32 = u_xlat21;
  u_xlat21 = (x_640 * x_641);
  let x_644 : f32 = u_xlat2.x;
  let x_645 : f32 = u_xlat21;
  let x_648 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_644 * x_645) + -(x_648));
  let x_653 : f32 = u_xlat3.x;
  let x_655 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_653 * x_655) + 1.0f);
  let x_659 : f32 = u_xlat21;
  u_xlat21 = (x_659 * 0.318309873f);
  let x_663 : f32 = u_xlat2.x;
  let x_665 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_663 * x_665) + 0.0000001f);
  let x_670 : f32 = u_xlat21;
  let x_672 : f32 = u_xlat2.x;
  u_xlat21 = (x_670 / x_672);
  let x_674 : f32 = u_xlat21;
  let x_675 : f32 = u_xlat22;
  u_xlat21 = (x_674 * x_675);
  let x_677 : f32 = u_xlat23;
  let x_678 : f32 = u_xlat21;
  u_xlat21 = (x_677 * x_678);
  let x_680 : f32 = u_xlat21;
  u_xlat21 = (x_680 * 3.141592741f);
  let x_683 : f32 = u_xlat21;
  u_xlat21 = max(x_683, 0.0f);
  let x_685 : vec4<f32> = u_xlat0;
  let x_687 : vec4<f32> = u_xlat0;
  u_xlat22 = dot(vec3<f32>(x_685.x, x_685.y, x_685.z), vec3<f32>(x_687.x, x_687.y, x_687.z));
  let x_690 : f32 = u_xlat22;
  u_xlatb22 = !((x_690 == 0.0f));
  let x_692 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_692);
  let x_694 : f32 = u_xlat21;
  let x_695 : f32 = u_xlat22;
  u_xlat21 = (x_694 * x_695);
  let x_697 : f32 = u_xlat16;
  let x_699 : vec3<f32> = u_xlat6;
  let x_700 : vec3<f32> = (vec3<f32>(x_697, x_697, x_697) * x_699);
  let x_701 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_700.x, x_701.y, x_700.y, x_700.z);
  let x_703 : vec3<f32> = u_xlat6;
  let x_704 : f32 = u_xlat21;
  u_xlat3 = (x_703 * vec3<f32>(x_704, x_704, x_704));
  let x_707 : f32 = u_xlat9;
  u_xlat21 = (-(x_707) + 1.0f);
  let x_710 : f32 = u_xlat21;
  let x_711 : f32 = u_xlat21;
  u_xlat22 = (x_710 * x_711);
  let x_713 : f32 = u_xlat22;
  let x_714 : f32 = u_xlat22;
  u_xlat22 = (x_713 * x_714);
  let x_716 : f32 = u_xlat21;
  let x_717 : f32 = u_xlat22;
  u_xlat21 = (x_716 * x_717);
  let x_719 : vec4<f32> = u_xlat0;
  u_xlat4 = (-(vec3<f32>(x_719.x, x_719.y, x_719.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_724 : vec3<f32> = u_xlat4;
  let x_725 : f32 = u_xlat21;
  let x_728 : vec4<f32> = u_xlat0;
  let x_730 : vec3<f32> = ((x_724 * vec3<f32>(x_725, x_725, x_725)) + vec3<f32>(x_728.x, x_728.y, x_728.z));
  let x_731 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_730.x, x_730.y, x_730.z, x_731.w);
  let x_733 : vec4<f32> = u_xlat0;
  let x_735 : vec3<f32> = u_xlat3;
  let x_736 : vec3<f32> = (vec3<f32>(x_733.x, x_733.y, x_733.z) * x_735);
  let x_737 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_736.x, x_736.y, x_736.z, x_737.w);
  let x_739 : vec4<f32> = u_xlat1;
  let x_741 : vec4<f32> = u_xlat2;
  let x_744 : vec4<f32> = u_xlat0;
  let x_746 : vec3<f32> = ((vec3<f32>(x_739.x, x_739.y, x_739.z) * vec3<f32>(x_741.x, x_741.z, x_741.w)) + vec3<f32>(x_744.x, x_744.y, x_744.z));
  let x_747 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_746.x, x_746.y, x_746.z, x_747.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

