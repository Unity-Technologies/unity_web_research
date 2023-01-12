struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
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
  x_BumpScale : f32,
  x_Metallic : f32,
  x_Glossiness : f32,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_33 : PGlobals;

@group(0) @binding(1) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(3) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(4) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(0) @binding(2) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_ShadowMapTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlat23 : f32;
  var u_xlatb23 : bool;
  var x_311 : vec3<f32>;
  var u_xlat24 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat16 : f32;
  var u_xlat10 : f32;
  var u_xlat17 : f32;
  var u_xlatb22 : bool;
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
  u_xlat21 = ((-(x_70) * 0.959999979f) + 0.959999979f);
  let x_75 : f32 = u_xlat21;
  let x_77 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_75, x_75, x_75) * x_77);
  let x_86 : vec4<f32> = vs_TEXCOORD0;
  let x_88 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, vec2<f32>(x_86.x, x_86.y));
  let x_89 : vec3<f32> = vec3<f32>(x_88.x, x_88.y, x_88.w);
  let x_90 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_89.x, x_89.y, x_89.z, x_90.w);
  let x_95 : f32 = u_xlat2.z;
  let x_98 : f32 = u_xlat2.x;
  u_xlat2.x = (x_95 * x_98);
  let x_101 : vec4<f32> = u_xlat2;
  let x_108 : vec2<f32> = ((vec2<f32>(x_101.x, x_101.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_109 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_108.x, x_108.y, x_109.z, x_109.w);
  let x_111 : vec4<f32> = u_xlat2;
  let x_115 : f32 = x_33.x_BumpScale;
  let x_117 : vec2<f32> = (vec2<f32>(x_111.x, x_111.y) * vec2<f32>(x_115, x_115));
  let x_118 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_117.x, x_117.y, x_118.z, x_118.w);
  let x_120 : vec4<f32> = u_xlat2;
  let x_122 : vec4<f32> = u_xlat2;
  u_xlat21 = dot(vec2<f32>(x_120.x, x_120.y), vec2<f32>(x_122.x, x_122.y));
  let x_125 : f32 = u_xlat21;
  u_xlat21 = min(x_125, 1.0f);
  let x_128 : f32 = u_xlat21;
  u_xlat21 = (-(x_128) + 1.0f);
  let x_131 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_131);
  let x_134 : vec4<f32> = u_xlat2;
  let x_137 : vec4<f32> = vs_TEXCOORD3;
  u_xlat9 = (vec3<f32>(x_134.y, x_134.y, x_134.y) * vec3<f32>(x_137.x, x_137.y, x_137.z));
  let x_141 : vec4<f32> = vs_TEXCOORD2;
  let x_143 : vec4<f32> = u_xlat2;
  let x_146 : vec3<f32> = u_xlat9;
  let x_147 : vec3<f32> = ((vec3<f32>(x_141.x, x_141.y, x_141.z) * vec3<f32>(x_143.x, x_143.x, x_143.x)) + x_146);
  let x_148 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_147.x, x_147.y, x_147.z, x_148.w);
  let x_151 : vec4<f32> = vs_TEXCOORD4;
  let x_153 : f32 = u_xlat21;
  let x_156 : vec4<f32> = u_xlat2;
  let x_158 : vec3<f32> = ((vec3<f32>(x_151.x, x_151.y, x_151.z) * vec3<f32>(x_153, x_153, x_153)) + vec3<f32>(x_156.x, x_156.y, x_156.z));
  let x_159 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_158.x, x_158.y, x_158.z, x_159.w);
  let x_161 : vec4<f32> = u_xlat2;
  let x_163 : vec4<f32> = u_xlat2;
  u_xlat21 = dot(vec3<f32>(x_161.x, x_161.y, x_161.z), vec3<f32>(x_163.x, x_163.y, x_163.z));
  let x_166 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_166);
  let x_168 : f32 = u_xlat21;
  let x_170 : vec4<f32> = u_xlat2;
  let x_172 : vec3<f32> = (vec3<f32>(x_168, x_168, x_168) * vec3<f32>(x_170.x, x_170.y, x_170.z));
  let x_173 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_172.x, x_172.y, x_172.z, x_173.w);
  let x_176 : vec4<f32> = vs_TEXCOORD1;
  let x_178 : vec4<f32> = vs_TEXCOORD1;
  u_xlat21 = dot(vec3<f32>(x_176.x, x_176.y, x_176.z), vec3<f32>(x_178.x, x_178.y, x_178.z));
  let x_181 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_181);
  let x_184 : f32 = u_xlat21;
  let x_186 : vec4<f32> = vs_TEXCOORD1;
  u_xlat3 = (vec3<f32>(x_184, x_184, x_184) * vec3<f32>(x_186.x, x_186.y, x_186.z));
  let x_192 : vec3<f32> = vs_TEXCOORD5;
  let x_197 : vec3<f32> = x_33.x_WorldSpaceCameraPos;
  let x_198 : vec3<f32> = (-(x_192) + x_197);
  let x_199 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_198.x, x_198.y, x_198.z, x_199.w);
  let x_204 : f32 = x_33.unity_MatrixV[0i].z;
  u_xlat5.x = x_204;
  let x_208 : f32 = x_33.unity_MatrixV[1i].z;
  u_xlat5.y = x_208;
  let x_213 : f32 = x_33.unity_MatrixV[2i].z;
  u_xlat5.z = x_213;
  let x_216 : vec4<f32> = u_xlat4;
  let x_218 : vec3<f32> = u_xlat5;
  u_xlat22 = dot(vec3<f32>(x_216.x, x_216.y, x_216.z), x_218);
  let x_220 : vec3<f32> = vs_TEXCOORD5;
  let x_223 : vec4<f32> = x_33.unity_ShadowFadeCenterAndType;
  let x_226 : vec3<f32> = (x_220 + -(vec3<f32>(x_223.x, x_223.y, x_223.z)));
  let x_227 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_226.x, x_226.y, x_226.z, x_227.w);
  let x_230 : vec4<f32> = u_xlat4;
  let x_232 : vec4<f32> = u_xlat4;
  u_xlat23 = dot(vec3<f32>(x_230.x, x_230.y, x_230.z), vec3<f32>(x_232.x, x_232.y, x_232.z));
  let x_235 : f32 = u_xlat23;
  u_xlat23 = sqrt(x_235);
  let x_237 : f32 = u_xlat22;
  let x_239 : f32 = u_xlat23;
  u_xlat23 = (-(x_237) + x_239);
  let x_243 : f32 = x_33.unity_ShadowFadeCenterAndType.w;
  let x_244 : f32 = u_xlat23;
  let x_246 : f32 = u_xlat22;
  u_xlat22 = ((x_243 * x_244) + x_246);
  let x_248 : f32 = u_xlat22;
  let x_250 : f32 = x_33.x_LightShadowData.z;
  let x_253 : f32 = x_33.x_LightShadowData.w;
  u_xlat22 = ((x_248 * x_250) + x_253);
  let x_255 : f32 = u_xlat22;
  u_xlat22 = clamp(x_255, 0.0f, 1.0f);
  let x_263 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb23 = (x_263 == 1.0f);
  let x_265 : bool = u_xlatb23;
  if (x_265) {
    let x_269 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb23 = (x_269 == 1.0f);
    let x_271 : vec3<f32> = vs_TEXCOORD5;
    let x_275 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_277 : vec3<f32> = (vec3<f32>(x_271.y, x_271.y, x_271.y) * vec3<f32>(x_275.x, x_275.y, x_275.z));
    let x_278 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
    let x_281 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_283 : vec3<f32> = vs_TEXCOORD5;
    let x_286 : vec4<f32> = u_xlat4;
    let x_288 : vec3<f32> = ((vec3<f32>(x_281.x, x_281.y, x_281.z) * vec3<f32>(x_283.x, x_283.x, x_283.x)) + vec3<f32>(x_286.x, x_286.y, x_286.z));
    let x_289 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_288.x, x_288.y, x_288.z, x_289.w);
    let x_292 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_294 : vec3<f32> = vs_TEXCOORD5;
    let x_297 : vec4<f32> = u_xlat4;
    let x_299 : vec3<f32> = ((vec3<f32>(x_292.x, x_292.y, x_292.z) * vec3<f32>(x_294.z, x_294.z, x_294.z)) + vec3<f32>(x_297.x, x_297.y, x_297.z));
    let x_300 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
    let x_302 : vec4<f32> = u_xlat4;
    let x_305 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_307 : vec3<f32> = (vec3<f32>(x_302.x, x_302.y, x_302.z) + vec3<f32>(x_305.x, x_305.y, x_305.z));
    let x_308 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_307.x, x_307.y, x_307.z, x_308.w);
    let x_310 : bool = u_xlatb23;
    if (x_310) {
      let x_314 : vec4<f32> = u_xlat4;
      x_311 = vec3<f32>(x_314.x, x_314.y, x_314.z);
    } else {
      let x_317 : vec3<f32> = vs_TEXCOORD5;
      x_311 = x_317;
    }
    let x_318 : vec3<f32> = x_311;
    let x_319 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
    let x_321 : vec4<f32> = u_xlat4;
    let x_325 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_327 : vec3<f32> = (vec3<f32>(x_321.x, x_321.y, x_321.z) + -(x_325));
    let x_328 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
    let x_330 : vec4<f32> = u_xlat4;
    let x_334 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_335 : vec3<f32> = (vec3<f32>(x_330.x, x_330.y, x_330.z) * x_334);
    let x_336 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_336.x, x_335.x, x_335.y, x_335.z);
    let x_339 : f32 = u_xlat4.y;
    u_xlat23 = ((x_339 * 0.25f) + 0.75f);
    let x_346 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat24 = ((x_346 * 0.5f) + 0.75f);
    let x_350 : f32 = u_xlat23;
    let x_351 : f32 = u_xlat24;
    u_xlat4.x = max(x_350, x_351);
    let x_362 : vec4<f32> = u_xlat4;
    let x_364 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_362.x, x_362.z, x_362.w));
    u_xlat4 = x_364;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_370 : vec4<f32> = u_xlat4;
  let x_372 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat23 = dot(x_370, x_372);
  let x_374 : f32 = u_xlat23;
  u_xlat23 = clamp(x_374, 0.0f, 1.0f);
  let x_377 : vec4<f32> = vs_TEXCOORD7;
  let x_379 : vec4<f32> = vs_TEXCOORD7;
  let x_381 : vec2<f32> = (vec2<f32>(x_377.x, x_377.y) / vec2<f32>(x_379.w, x_379.w));
  let x_382 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_381.x, x_381.y, x_382.z, x_382.w);
  let x_389 : vec4<f32> = u_xlat4;
  let x_391 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_389.x, x_389.y));
  u_xlat24 = x_391.x;
  let x_393 : f32 = u_xlat23;
  let x_394 : f32 = u_xlat24;
  u_xlat23 = (x_393 + -(x_394));
  let x_397 : f32 = u_xlat22;
  let x_398 : f32 = u_xlat23;
  let x_400 : f32 = u_xlat24;
  u_xlat22 = ((x_397 * x_398) + x_400);
  let x_402 : f32 = u_xlat22;
  let x_406 : vec4<f32> = x_33.x_LightColor0;
  let x_408 : vec3<f32> = (vec3<f32>(x_402, x_402, x_402) * vec3<f32>(x_406.x, x_406.y, x_406.z));
  let x_409 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_408.x, x_408.y, x_408.z, x_409.w);
  let x_413 : f32 = x_33.x_Glossiness;
  u_xlat22 = (-(x_413) + 1.0f);
  let x_418 : f32 = vs_TEXCOORD2.w;
  u_xlat5.x = x_418;
  let x_421 : f32 = vs_TEXCOORD3.w;
  u_xlat5.y = x_421;
  let x_424 : f32 = vs_TEXCOORD4.w;
  u_xlat5.z = x_424;
  let x_427 : vec4<f32> = vs_TEXCOORD1;
  let x_430 : f32 = u_xlat21;
  let x_433 : vec3<f32> = u_xlat5;
  u_xlat6 = ((-(vec3<f32>(x_427.x, x_427.y, x_427.z)) * vec3<f32>(x_430, x_430, x_430)) + x_433);
  let x_435 : vec3<f32> = u_xlat6;
  let x_436 : vec3<f32> = u_xlat6;
  u_xlat21 = dot(x_435, x_436);
  let x_438 : f32 = u_xlat21;
  u_xlat21 = max(x_438, 0.001f);
  let x_441 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_441);
  let x_443 : f32 = u_xlat21;
  let x_445 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_443, x_443, x_443) * x_445);
  let x_447 : vec4<f32> = u_xlat2;
  let x_449 : vec3<f32> = u_xlat3;
  u_xlat21 = dot(vec3<f32>(x_447.x, x_447.y, x_447.z), -(x_449));
  let x_452 : vec4<f32> = u_xlat2;
  let x_454 : vec3<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_452.x, x_452.y, x_452.z), x_454);
  let x_456 : f32 = u_xlat23;
  u_xlat23 = clamp(x_456, 0.0f, 1.0f);
  let x_458 : vec4<f32> = u_xlat2;
  let x_460 : vec3<f32> = u_xlat6;
  u_xlat2.x = dot(vec3<f32>(x_458.x, x_458.y, x_458.z), x_460);
  let x_464 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_464, 0.0f, 1.0f);
  let x_467 : vec3<f32> = u_xlat5;
  let x_468 : vec3<f32> = u_xlat6;
  u_xlat9.x = dot(x_467, x_468);
  let x_472 : f32 = u_xlat9.x;
  u_xlat9.x = clamp(x_472, 0.0f, 1.0f);
  let x_477 : f32 = u_xlat9.x;
  let x_479 : f32 = u_xlat9.x;
  u_xlat16 = (x_477 * x_479);
  let x_481 : f32 = u_xlat16;
  let x_483 : f32 = u_xlat22;
  u_xlat16 = dot(vec2<f32>(x_481, x_481), vec2<f32>(x_483, x_483));
  let x_486 : f32 = u_xlat16;
  u_xlat16 = (x_486 + -0.5f);
  let x_489 : f32 = u_xlat23;
  u_xlat3.x = (-(x_489) + 1.0f);
  let x_495 : f32 = u_xlat3.x;
  let x_497 : f32 = u_xlat3.x;
  u_xlat10 = (x_495 * x_497);
  let x_499 : f32 = u_xlat10;
  let x_500 : f32 = u_xlat10;
  u_xlat10 = (x_499 * x_500);
  let x_503 : f32 = u_xlat3.x;
  let x_504 : f32 = u_xlat10;
  u_xlat3.x = (x_503 * x_504);
  let x_507 : f32 = u_xlat16;
  let x_509 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_507 * x_509) + 1.0f);
  let x_513 : f32 = u_xlat21;
  u_xlat10 = (-(abs(x_513)) + 1.0f);
  let x_518 : f32 = u_xlat10;
  let x_519 : f32 = u_xlat10;
  u_xlat17 = (x_518 * x_519);
  let x_521 : f32 = u_xlat17;
  let x_522 : f32 = u_xlat17;
  u_xlat17 = (x_521 * x_522);
  let x_524 : f32 = u_xlat10;
  let x_525 : f32 = u_xlat17;
  u_xlat10 = (x_524 * x_525);
  let x_527 : f32 = u_xlat16;
  let x_528 : f32 = u_xlat10;
  u_xlat16 = ((x_527 * x_528) + 1.0f);
  let x_531 : f32 = u_xlat16;
  let x_533 : f32 = u_xlat3.x;
  u_xlat16 = (x_531 * x_533);
  let x_535 : f32 = u_xlat23;
  let x_536 : f32 = u_xlat16;
  u_xlat16 = (x_535 * x_536);
  let x_538 : f32 = u_xlat22;
  let x_539 : f32 = u_xlat22;
  u_xlat22 = (x_538 * x_539);
  let x_541 : f32 = u_xlat22;
  u_xlat22 = max(x_541, 0.002f);
  let x_544 : f32 = u_xlat22;
  u_xlat3.x = (-(x_544) + 1.0f);
  let x_548 : f32 = u_xlat21;
  let x_551 : f32 = u_xlat3.x;
  let x_553 : f32 = u_xlat22;
  u_xlat10 = ((abs(x_548) * x_551) + x_553);
  let x_555 : f32 = u_xlat23;
  let x_557 : f32 = u_xlat3.x;
  let x_559 : f32 = u_xlat22;
  u_xlat3.x = ((x_555 * x_557) + x_559);
  let x_562 : f32 = u_xlat21;
  let x_565 : f32 = u_xlat3.x;
  u_xlat21 = (abs(x_562) * x_565);
  let x_567 : f32 = u_xlat23;
  let x_568 : f32 = u_xlat10;
  let x_570 : f32 = u_xlat21;
  u_xlat21 = ((x_567 * x_568) + x_570);
  let x_572 : f32 = u_xlat21;
  u_xlat21 = (x_572 + 0.00001f);
  let x_575 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_575);
  let x_577 : f32 = u_xlat22;
  let x_578 : f32 = u_xlat22;
  u_xlat22 = (x_577 * x_578);
  let x_581 : f32 = u_xlat2.x;
  let x_582 : f32 = u_xlat22;
  let x_585 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_581 * x_582) + -(x_585));
  let x_590 : f32 = u_xlat3.x;
  let x_592 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_590 * x_592) + 1.0f);
  let x_596 : f32 = u_xlat22;
  u_xlat22 = (x_596 * 0.318309873f);
  let x_600 : f32 = u_xlat2.x;
  let x_602 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_600 * x_602) + 0.0000001f);
  let x_607 : f32 = u_xlat22;
  let x_609 : f32 = u_xlat2.x;
  u_xlat22 = (x_607 / x_609);
  let x_611 : f32 = u_xlat21;
  let x_612 : f32 = u_xlat22;
  u_xlat21 = (x_611 * x_612);
  let x_614 : f32 = u_xlat23;
  let x_615 : f32 = u_xlat21;
  u_xlat21 = (x_614 * x_615);
  let x_617 : f32 = u_xlat21;
  u_xlat21 = (x_617 * 3.141592741f);
  let x_620 : f32 = u_xlat21;
  u_xlat21 = max(x_620, 0.0f);
  let x_622 : vec3<f32> = u_xlat0;
  let x_623 : vec3<f32> = u_xlat0;
  u_xlat22 = dot(x_622, x_623);
  let x_626 : f32 = u_xlat22;
  u_xlatb22 = !((x_626 == 0.0f));
  let x_628 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_628);
  let x_630 : f32 = u_xlat21;
  let x_631 : f32 = u_xlat22;
  u_xlat21 = (x_630 * x_631);
  let x_633 : f32 = u_xlat16;
  let x_635 : vec4<f32> = u_xlat4;
  let x_637 : vec3<f32> = (vec3<f32>(x_633, x_633, x_633) * vec3<f32>(x_635.x, x_635.y, x_635.z));
  let x_638 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_637.x, x_638.y, x_637.y, x_637.z);
  let x_640 : vec4<f32> = u_xlat4;
  let x_642 : f32 = u_xlat21;
  u_xlat3 = (vec3<f32>(x_640.x, x_640.y, x_640.z) * vec3<f32>(x_642, x_642, x_642));
  let x_646 : f32 = u_xlat9.x;
  u_xlat21 = (-(x_646) + 1.0f);
  let x_649 : f32 = u_xlat21;
  let x_650 : f32 = u_xlat21;
  u_xlat22 = (x_649 * x_650);
  let x_652 : f32 = u_xlat22;
  let x_653 : f32 = u_xlat22;
  u_xlat22 = (x_652 * x_653);
  let x_655 : f32 = u_xlat21;
  let x_656 : f32 = u_xlat22;
  u_xlat21 = (x_655 * x_656);
  let x_658 : vec3<f32> = u_xlat0;
  let x_661 : vec3<f32> = (-(x_658) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_662 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_661.x, x_661.y, x_661.z, x_662.w);
  let x_664 : vec4<f32> = u_xlat4;
  let x_666 : f32 = u_xlat21;
  let x_669 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_664.x, x_664.y, x_664.z) * vec3<f32>(x_666, x_666, x_666)) + x_669);
  let x_671 : vec3<f32> = u_xlat0;
  let x_672 : vec3<f32> = u_xlat3;
  u_xlat0 = (x_671 * x_672);
  let x_676 : vec3<f32> = u_xlat1;
  let x_677 : vec4<f32> = u_xlat2;
  let x_680 : vec3<f32> = u_xlat0;
  let x_681 : vec3<f32> = ((x_676 * vec3<f32>(x_677.x, x_677.z, x_677.w)) + x_680);
  let x_682 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_681.x, x_681.y, x_681.z, x_682.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec3<f32>, @location(6) vs_TEXCOORD7_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

