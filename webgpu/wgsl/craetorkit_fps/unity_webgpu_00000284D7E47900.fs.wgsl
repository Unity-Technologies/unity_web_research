struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_FogParams : vec4<f32>,
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
  var x_312 : vec3<f32>;
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
  let x_251 : f32 = x_33.x_LightShadowData.z;
  let x_254 : f32 = x_33.x_LightShadowData.w;
  u_xlat22 = ((x_248 * x_251) + x_254);
  let x_256 : f32 = u_xlat22;
  u_xlat22 = clamp(x_256, 0.0f, 1.0f);
  let x_264 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb23 = (x_264 == 1.0f);
  let x_266 : bool = u_xlatb23;
  if (x_266) {
    let x_270 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb23 = (x_270 == 1.0f);
    let x_272 : vec3<f32> = vs_TEXCOORD5;
    let x_276 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_278 : vec3<f32> = (vec3<f32>(x_272.y, x_272.y, x_272.y) * vec3<f32>(x_276.x, x_276.y, x_276.z));
    let x_279 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_278.x, x_278.y, x_278.z, x_279.w);
    let x_282 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_284 : vec3<f32> = vs_TEXCOORD5;
    let x_287 : vec4<f32> = u_xlat4;
    let x_289 : vec3<f32> = ((vec3<f32>(x_282.x, x_282.y, x_282.z) * vec3<f32>(x_284.x, x_284.x, x_284.x)) + vec3<f32>(x_287.x, x_287.y, x_287.z));
    let x_290 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_289.x, x_289.y, x_289.z, x_290.w);
    let x_293 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_295 : vec3<f32> = vs_TEXCOORD5;
    let x_298 : vec4<f32> = u_xlat4;
    let x_300 : vec3<f32> = ((vec3<f32>(x_293.x, x_293.y, x_293.z) * vec3<f32>(x_295.z, x_295.z, x_295.z)) + vec3<f32>(x_298.x, x_298.y, x_298.z));
    let x_301 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_300.x, x_300.y, x_300.z, x_301.w);
    let x_303 : vec4<f32> = u_xlat4;
    let x_306 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_308 : vec3<f32> = (vec3<f32>(x_303.x, x_303.y, x_303.z) + vec3<f32>(x_306.x, x_306.y, x_306.z));
    let x_309 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_308.x, x_308.y, x_308.z, x_309.w);
    let x_311 : bool = u_xlatb23;
    if (x_311) {
      let x_315 : vec4<f32> = u_xlat4;
      x_312 = vec3<f32>(x_315.x, x_315.y, x_315.z);
    } else {
      let x_318 : vec3<f32> = vs_TEXCOORD5;
      x_312 = x_318;
    }
    let x_319 : vec3<f32> = x_312;
    let x_320 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_319.x, x_319.y, x_319.z, x_320.w);
    let x_322 : vec4<f32> = u_xlat4;
    let x_326 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_328 : vec3<f32> = (vec3<f32>(x_322.x, x_322.y, x_322.z) + -(x_326));
    let x_329 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_328.x, x_328.y, x_328.z, x_329.w);
    let x_331 : vec4<f32> = u_xlat4;
    let x_335 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_336 : vec3<f32> = (vec3<f32>(x_331.x, x_331.y, x_331.z) * x_335);
    let x_337 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_337.x, x_336.x, x_336.y, x_336.z);
    let x_340 : f32 = u_xlat4.y;
    u_xlat23 = ((x_340 * 0.25f) + 0.75f);
    let x_347 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat24 = ((x_347 * 0.5f) + 0.75f);
    let x_351 : f32 = u_xlat23;
    let x_352 : f32 = u_xlat24;
    u_xlat4.x = max(x_351, x_352);
    let x_363 : vec4<f32> = u_xlat4;
    let x_365 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_363.x, x_363.z, x_363.w));
    u_xlat4 = x_365;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_371 : vec4<f32> = u_xlat4;
  let x_373 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat23 = dot(x_371, x_373);
  let x_375 : f32 = u_xlat23;
  u_xlat23 = clamp(x_375, 0.0f, 1.0f);
  let x_378 : vec4<f32> = vs_TEXCOORD7;
  let x_380 : vec4<f32> = vs_TEXCOORD7;
  let x_382 : vec2<f32> = (vec2<f32>(x_378.x, x_378.y) / vec2<f32>(x_380.w, x_380.w));
  let x_383 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_382.x, x_382.y, x_383.z, x_383.w);
  let x_390 : vec4<f32> = u_xlat4;
  let x_392 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_390.x, x_390.y));
  u_xlat24 = x_392.x;
  let x_394 : f32 = u_xlat23;
  let x_395 : f32 = u_xlat24;
  u_xlat23 = (x_394 + -(x_395));
  let x_398 : f32 = u_xlat22;
  let x_399 : f32 = u_xlat23;
  let x_401 : f32 = u_xlat24;
  u_xlat22 = ((x_398 * x_399) + x_401);
  let x_403 : f32 = u_xlat22;
  let x_407 : vec4<f32> = x_33.x_LightColor0;
  let x_409 : vec3<f32> = (vec3<f32>(x_403, x_403, x_403) * vec3<f32>(x_407.x, x_407.y, x_407.z));
  let x_410 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_409.x, x_409.y, x_409.z, x_410.w);
  let x_414 : f32 = x_33.x_Glossiness;
  u_xlat22 = (-(x_414) + 1.0f);
  let x_419 : f32 = vs_TEXCOORD2.w;
  u_xlat5.x = x_419;
  let x_422 : f32 = vs_TEXCOORD3.w;
  u_xlat5.y = x_422;
  let x_425 : f32 = vs_TEXCOORD4.w;
  u_xlat5.z = x_425;
  let x_428 : vec4<f32> = vs_TEXCOORD1;
  let x_431 : f32 = u_xlat21;
  let x_434 : vec3<f32> = u_xlat5;
  u_xlat6 = ((-(vec3<f32>(x_428.x, x_428.y, x_428.z)) * vec3<f32>(x_431, x_431, x_431)) + x_434);
  let x_436 : vec3<f32> = u_xlat6;
  let x_437 : vec3<f32> = u_xlat6;
  u_xlat21 = dot(x_436, x_437);
  let x_439 : f32 = u_xlat21;
  u_xlat21 = max(x_439, 0.001f);
  let x_442 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_442);
  let x_444 : f32 = u_xlat21;
  let x_446 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_444, x_444, x_444) * x_446);
  let x_448 : vec4<f32> = u_xlat2;
  let x_450 : vec3<f32> = u_xlat3;
  u_xlat21 = dot(vec3<f32>(x_448.x, x_448.y, x_448.z), -(x_450));
  let x_453 : vec4<f32> = u_xlat2;
  let x_455 : vec3<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_453.x, x_453.y, x_453.z), x_455);
  let x_457 : f32 = u_xlat23;
  u_xlat23 = clamp(x_457, 0.0f, 1.0f);
  let x_459 : vec4<f32> = u_xlat2;
  let x_461 : vec3<f32> = u_xlat6;
  u_xlat2.x = dot(vec3<f32>(x_459.x, x_459.y, x_459.z), x_461);
  let x_465 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_465, 0.0f, 1.0f);
  let x_468 : vec3<f32> = u_xlat5;
  let x_469 : vec3<f32> = u_xlat6;
  u_xlat9.x = dot(x_468, x_469);
  let x_473 : f32 = u_xlat9.x;
  u_xlat9.x = clamp(x_473, 0.0f, 1.0f);
  let x_478 : f32 = u_xlat9.x;
  let x_480 : f32 = u_xlat9.x;
  u_xlat16 = (x_478 * x_480);
  let x_482 : f32 = u_xlat16;
  let x_484 : f32 = u_xlat22;
  u_xlat16 = dot(vec2<f32>(x_482, x_482), vec2<f32>(x_484, x_484));
  let x_487 : f32 = u_xlat16;
  u_xlat16 = (x_487 + -0.5f);
  let x_490 : f32 = u_xlat23;
  u_xlat3.x = (-(x_490) + 1.0f);
  let x_496 : f32 = u_xlat3.x;
  let x_498 : f32 = u_xlat3.x;
  u_xlat10 = (x_496 * x_498);
  let x_500 : f32 = u_xlat10;
  let x_501 : f32 = u_xlat10;
  u_xlat10 = (x_500 * x_501);
  let x_504 : f32 = u_xlat3.x;
  let x_505 : f32 = u_xlat10;
  u_xlat3.x = (x_504 * x_505);
  let x_508 : f32 = u_xlat16;
  let x_510 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_508 * x_510) + 1.0f);
  let x_514 : f32 = u_xlat21;
  u_xlat10 = (-(abs(x_514)) + 1.0f);
  let x_519 : f32 = u_xlat10;
  let x_520 : f32 = u_xlat10;
  u_xlat17 = (x_519 * x_520);
  let x_522 : f32 = u_xlat17;
  let x_523 : f32 = u_xlat17;
  u_xlat17 = (x_522 * x_523);
  let x_525 : f32 = u_xlat10;
  let x_526 : f32 = u_xlat17;
  u_xlat10 = (x_525 * x_526);
  let x_528 : f32 = u_xlat16;
  let x_529 : f32 = u_xlat10;
  u_xlat16 = ((x_528 * x_529) + 1.0f);
  let x_532 : f32 = u_xlat16;
  let x_534 : f32 = u_xlat3.x;
  u_xlat16 = (x_532 * x_534);
  let x_536 : f32 = u_xlat23;
  let x_537 : f32 = u_xlat16;
  u_xlat16 = (x_536 * x_537);
  let x_539 : f32 = u_xlat22;
  let x_540 : f32 = u_xlat22;
  u_xlat22 = (x_539 * x_540);
  let x_542 : f32 = u_xlat22;
  u_xlat22 = max(x_542, 0.002f);
  let x_545 : f32 = u_xlat22;
  u_xlat3.x = (-(x_545) + 1.0f);
  let x_549 : f32 = u_xlat21;
  let x_552 : f32 = u_xlat3.x;
  let x_554 : f32 = u_xlat22;
  u_xlat10 = ((abs(x_549) * x_552) + x_554);
  let x_556 : f32 = u_xlat23;
  let x_558 : f32 = u_xlat3.x;
  let x_560 : f32 = u_xlat22;
  u_xlat3.x = ((x_556 * x_558) + x_560);
  let x_563 : f32 = u_xlat21;
  let x_566 : f32 = u_xlat3.x;
  u_xlat21 = (abs(x_563) * x_566);
  let x_568 : f32 = u_xlat23;
  let x_569 : f32 = u_xlat10;
  let x_571 : f32 = u_xlat21;
  u_xlat21 = ((x_568 * x_569) + x_571);
  let x_573 : f32 = u_xlat21;
  u_xlat21 = (x_573 + 0.00001f);
  let x_576 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_576);
  let x_578 : f32 = u_xlat22;
  let x_579 : f32 = u_xlat22;
  u_xlat22 = (x_578 * x_579);
  let x_582 : f32 = u_xlat2.x;
  let x_583 : f32 = u_xlat22;
  let x_586 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_582 * x_583) + -(x_586));
  let x_591 : f32 = u_xlat3.x;
  let x_593 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_591 * x_593) + 1.0f);
  let x_597 : f32 = u_xlat22;
  u_xlat22 = (x_597 * 0.318309873f);
  let x_601 : f32 = u_xlat2.x;
  let x_603 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_601 * x_603) + 0.0000001f);
  let x_608 : f32 = u_xlat22;
  let x_610 : f32 = u_xlat2.x;
  u_xlat22 = (x_608 / x_610);
  let x_612 : f32 = u_xlat21;
  let x_613 : f32 = u_xlat22;
  u_xlat21 = (x_612 * x_613);
  let x_615 : f32 = u_xlat23;
  let x_616 : f32 = u_xlat21;
  u_xlat21 = (x_615 * x_616);
  let x_618 : f32 = u_xlat21;
  u_xlat21 = (x_618 * 3.141592741f);
  let x_621 : f32 = u_xlat21;
  u_xlat21 = max(x_621, 0.0f);
  let x_623 : vec3<f32> = u_xlat0;
  let x_624 : vec3<f32> = u_xlat0;
  u_xlat22 = dot(x_623, x_624);
  let x_627 : f32 = u_xlat22;
  u_xlatb22 = !((x_627 == 0.0f));
  let x_629 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_629);
  let x_631 : f32 = u_xlat21;
  let x_632 : f32 = u_xlat22;
  u_xlat21 = (x_631 * x_632);
  let x_634 : f32 = u_xlat16;
  let x_636 : vec4<f32> = u_xlat4;
  let x_638 : vec3<f32> = (vec3<f32>(x_634, x_634, x_634) * vec3<f32>(x_636.x, x_636.y, x_636.z));
  let x_639 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_638.x, x_639.y, x_638.y, x_638.z);
  let x_641 : vec4<f32> = u_xlat4;
  let x_643 : f32 = u_xlat21;
  u_xlat3 = (vec3<f32>(x_641.x, x_641.y, x_641.z) * vec3<f32>(x_643, x_643, x_643));
  let x_647 : f32 = u_xlat9.x;
  u_xlat21 = (-(x_647) + 1.0f);
  let x_650 : f32 = u_xlat21;
  let x_651 : f32 = u_xlat21;
  u_xlat22 = (x_650 * x_651);
  let x_653 : f32 = u_xlat22;
  let x_654 : f32 = u_xlat22;
  u_xlat22 = (x_653 * x_654);
  let x_656 : f32 = u_xlat21;
  let x_657 : f32 = u_xlat22;
  u_xlat21 = (x_656 * x_657);
  let x_659 : vec3<f32> = u_xlat0;
  let x_662 : vec3<f32> = (-(x_659) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_663 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_662.x, x_662.y, x_662.z, x_663.w);
  let x_665 : vec4<f32> = u_xlat4;
  let x_667 : f32 = u_xlat21;
  let x_670 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_665.x, x_665.y, x_665.z) * vec3<f32>(x_667, x_667, x_667)) + x_670);
  let x_672 : vec3<f32> = u_xlat0;
  let x_673 : vec3<f32> = u_xlat3;
  u_xlat0 = (x_672 * x_673);
  let x_675 : vec3<f32> = u_xlat1;
  let x_676 : vec4<f32> = u_xlat2;
  let x_679 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_675 * vec3<f32>(x_676.x, x_676.z, x_676.w)) + x_679);
  let x_682 : f32 = vs_TEXCOORD1.w;
  let x_684 : f32 = x_33.x_ProjectionParams.y;
  u_xlat21 = (x_682 / x_684);
  let x_686 : f32 = u_xlat21;
  u_xlat21 = (-(x_686) + 1.0f);
  let x_689 : f32 = u_xlat21;
  let x_691 : f32 = x_33.x_ProjectionParams.z;
  u_xlat21 = (x_689 * x_691);
  let x_693 : f32 = u_xlat21;
  u_xlat21 = max(x_693, 0.0f);
  let x_695 : f32 = u_xlat21;
  let x_698 : f32 = x_33.unity_FogParams.x;
  u_xlat21 = (x_695 * x_698);
  let x_700 : f32 = u_xlat21;
  let x_701 : f32 = u_xlat21;
  u_xlat21 = (x_700 * -(x_701));
  let x_704 : f32 = u_xlat21;
  u_xlat21 = exp2(x_704);
  let x_708 : vec3<f32> = u_xlat0;
  let x_709 : f32 = u_xlat21;
  let x_711 : vec3<f32> = (x_708 * vec3<f32>(x_709, x_709, x_709));
  let x_712 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_711.x, x_711.y, x_711.z, x_712.w);
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

