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
  @size(4)
  padding_3 : u32,
  unity_WorldToLight : mat4x4<f32>,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_33 : PGlobals;

@group(0) @binding(1) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(5) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(0) @binding(2) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ShadowMapTexture : sampler;

@group(0) @binding(3) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_LightTexture0 : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlat23 : f32;
  var u_xlatb23 : bool;
  var x_351 : vec3<f32>;
  var u_xlat24 : f32;
  var u_xlat18 : vec2<f32>;
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
  let x_197 : vec4<f32> = x_33.unity_WorldToLight[1i];
  let x_199 : vec2<f32> = (vec2<f32>(x_192.y, x_192.y) * vec2<f32>(x_197.x, x_197.y));
  let x_200 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_199.x, x_199.y, x_200.z);
  let x_204 : vec4<f32> = x_33.unity_WorldToLight[0i];
  let x_206 : vec3<f32> = vs_TEXCOORD5;
  let x_209 : vec3<f32> = u_xlat4;
  let x_211 : vec2<f32> = ((vec2<f32>(x_204.x, x_204.y) * vec2<f32>(x_206.x, x_206.x)) + vec2<f32>(x_209.x, x_209.y));
  let x_212 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_211.x, x_211.y, x_212.z);
  let x_216 : vec4<f32> = x_33.unity_WorldToLight[2i];
  let x_218 : vec3<f32> = vs_TEXCOORD5;
  let x_221 : vec3<f32> = u_xlat4;
  let x_223 : vec2<f32> = ((vec2<f32>(x_216.x, x_216.y) * vec2<f32>(x_218.z, x_218.z)) + vec2<f32>(x_221.x, x_221.y));
  let x_224 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_223.x, x_223.y, x_224.z);
  let x_226 : vec3<f32> = u_xlat4;
  let x_230 : vec4<f32> = x_33.unity_WorldToLight[3i];
  let x_232 : vec2<f32> = (vec2<f32>(x_226.x, x_226.y) + vec2<f32>(x_230.x, x_230.y));
  let x_233 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_232.x, x_232.y, x_233.z);
  let x_236 : vec3<f32> = vs_TEXCOORD5;
  let x_240 : vec3<f32> = x_33.x_WorldSpaceCameraPos;
  let x_241 : vec3<f32> = (-(x_236) + x_240);
  let x_242 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_241.x, x_241.y, x_241.z, x_242.w);
  let x_247 : f32 = x_33.unity_MatrixV[0i].z;
  u_xlat6.x = x_247;
  let x_250 : f32 = x_33.unity_MatrixV[1i].z;
  u_xlat6.y = x_250;
  let x_254 : f32 = x_33.unity_MatrixV[2i].z;
  u_xlat6.z = x_254;
  let x_257 : vec4<f32> = u_xlat5;
  let x_259 : vec3<f32> = u_xlat6;
  u_xlat22 = dot(vec3<f32>(x_257.x, x_257.y, x_257.z), x_259);
  let x_261 : vec3<f32> = vs_TEXCOORD5;
  let x_263 : vec4<f32> = x_33.unity_ShadowFadeCenterAndType;
  let x_266 : vec3<f32> = (x_261 + -(vec3<f32>(x_263.x, x_263.y, x_263.z)));
  let x_267 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_266.x, x_266.y, x_266.z, x_267.w);
  let x_270 : vec4<f32> = u_xlat5;
  let x_272 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_270.x, x_270.y, x_270.z), vec3<f32>(x_272.x, x_272.y, x_272.z));
  let x_275 : f32 = u_xlat23;
  u_xlat23 = sqrt(x_275);
  let x_277 : f32 = u_xlat22;
  let x_279 : f32 = u_xlat23;
  u_xlat23 = (-(x_277) + x_279);
  let x_283 : f32 = x_33.unity_ShadowFadeCenterAndType.w;
  let x_284 : f32 = u_xlat23;
  let x_286 : f32 = u_xlat22;
  u_xlat22 = ((x_283 * x_284) + x_286);
  let x_288 : f32 = u_xlat22;
  let x_290 : f32 = x_33.x_LightShadowData.z;
  let x_293 : f32 = x_33.x_LightShadowData.w;
  u_xlat22 = ((x_288 * x_290) + x_293);
  let x_295 : f32 = u_xlat22;
  u_xlat22 = clamp(x_295, 0.0f, 1.0f);
  let x_303 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb23 = (x_303 == 1.0f);
  let x_305 : bool = u_xlatb23;
  if (x_305) {
    let x_309 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb23 = (x_309 == 1.0f);
    let x_311 : vec3<f32> = vs_TEXCOORD5;
    let x_315 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_317 : vec3<f32> = (vec3<f32>(x_311.y, x_311.y, x_311.y) * vec3<f32>(x_315.x, x_315.y, x_315.z));
    let x_318 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_317.x, x_317.y, x_317.z, x_318.w);
    let x_321 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_323 : vec3<f32> = vs_TEXCOORD5;
    let x_326 : vec4<f32> = u_xlat5;
    let x_328 : vec3<f32> = ((vec3<f32>(x_321.x, x_321.y, x_321.z) * vec3<f32>(x_323.x, x_323.x, x_323.x)) + vec3<f32>(x_326.x, x_326.y, x_326.z));
    let x_329 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_328.x, x_328.y, x_328.z, x_329.w);
    let x_332 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_334 : vec3<f32> = vs_TEXCOORD5;
    let x_337 : vec4<f32> = u_xlat5;
    let x_339 : vec3<f32> = ((vec3<f32>(x_332.x, x_332.y, x_332.z) * vec3<f32>(x_334.z, x_334.z, x_334.z)) + vec3<f32>(x_337.x, x_337.y, x_337.z));
    let x_340 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_339.x, x_339.y, x_339.z, x_340.w);
    let x_342 : vec4<f32> = u_xlat5;
    let x_345 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_347 : vec3<f32> = (vec3<f32>(x_342.x, x_342.y, x_342.z) + vec3<f32>(x_345.x, x_345.y, x_345.z));
    let x_348 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_347.x, x_347.y, x_347.z, x_348.w);
    let x_350 : bool = u_xlatb23;
    if (x_350) {
      let x_354 : vec4<f32> = u_xlat5;
      x_351 = vec3<f32>(x_354.x, x_354.y, x_354.z);
    } else {
      let x_357 : vec3<f32> = vs_TEXCOORD5;
      x_351 = x_357;
    }
    let x_358 : vec3<f32> = x_351;
    let x_359 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_358.x, x_358.y, x_358.z, x_359.w);
    let x_361 : vec4<f32> = u_xlat5;
    let x_365 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_367 : vec3<f32> = (vec3<f32>(x_361.x, x_361.y, x_361.z) + -(x_365));
    let x_368 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_367.x, x_367.y, x_367.z, x_368.w);
    let x_370 : vec4<f32> = u_xlat5;
    let x_374 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_375 : vec3<f32> = (vec3<f32>(x_370.x, x_370.y, x_370.z) * x_374);
    let x_376 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_376.x, x_375.x, x_375.y, x_375.z);
    let x_379 : f32 = u_xlat5.y;
    u_xlat23 = ((x_379 * 0.25f) + 0.75f);
    let x_386 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat24 = ((x_386 * 0.5f) + 0.75f);
    let x_390 : f32 = u_xlat23;
    let x_391 : f32 = u_xlat24;
    u_xlat5.x = max(x_390, x_391);
    let x_402 : vec4<f32> = u_xlat5;
    let x_404 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_402.x, x_402.z, x_402.w));
    u_xlat5 = x_404;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_410 : vec4<f32> = u_xlat5;
  let x_412 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat23 = dot(x_410, x_412);
  let x_414 : f32 = u_xlat23;
  u_xlat23 = clamp(x_414, 0.0f, 1.0f);
  let x_419 : vec4<f32> = vs_TEXCOORD7;
  let x_421 : vec4<f32> = vs_TEXCOORD7;
  u_xlat18 = (vec2<f32>(x_419.x, x_419.y) / vec2<f32>(x_421.w, x_421.w));
  let x_429 : vec2<f32> = u_xlat18;
  let x_430 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, x_429);
  u_xlat24 = x_430.x;
  let x_432 : f32 = u_xlat23;
  let x_433 : f32 = u_xlat24;
  u_xlat23 = (x_432 + -(x_433));
  let x_436 : f32 = u_xlat22;
  let x_437 : f32 = u_xlat23;
  let x_439 : f32 = u_xlat24;
  u_xlat22 = ((x_436 * x_437) + x_439);
  let x_446 : vec3<f32> = u_xlat4;
  let x_448 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_446.x, x_446.y));
  u_xlat23 = x_448.w;
  let x_450 : f32 = u_xlat22;
  let x_451 : f32 = u_xlat23;
  u_xlat22 = (x_450 * x_451);
  let x_453 : f32 = u_xlat22;
  let x_457 : vec4<f32> = x_33.x_LightColor0;
  u_xlat4 = (vec3<f32>(x_453, x_453, x_453) * vec3<f32>(x_457.x, x_457.y, x_457.z));
  let x_462 : f32 = x_33.x_Glossiness;
  u_xlat22 = (-(x_462) + 1.0f);
  let x_467 : f32 = vs_TEXCOORD2.w;
  u_xlat5.x = x_467;
  let x_470 : f32 = vs_TEXCOORD3.w;
  u_xlat5.y = x_470;
  let x_473 : f32 = vs_TEXCOORD4.w;
  u_xlat5.z = x_473;
  let x_475 : vec4<f32> = vs_TEXCOORD1;
  let x_478 : f32 = u_xlat21;
  let x_481 : vec4<f32> = u_xlat5;
  u_xlat6 = ((-(vec3<f32>(x_475.x, x_475.y, x_475.z)) * vec3<f32>(x_478, x_478, x_478)) + vec3<f32>(x_481.x, x_481.y, x_481.z));
  let x_484 : vec3<f32> = u_xlat6;
  let x_485 : vec3<f32> = u_xlat6;
  u_xlat21 = dot(x_484, x_485);
  let x_487 : f32 = u_xlat21;
  u_xlat21 = max(x_487, 0.001f);
  let x_490 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_490);
  let x_492 : f32 = u_xlat21;
  let x_494 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_492, x_492, x_492) * x_494);
  let x_496 : vec4<f32> = u_xlat2;
  let x_498 : vec3<f32> = u_xlat3;
  u_xlat21 = dot(vec3<f32>(x_496.x, x_496.y, x_496.z), -(x_498));
  let x_501 : vec4<f32> = u_xlat2;
  let x_503 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_501.x, x_501.y, x_501.z), vec3<f32>(x_503.x, x_503.y, x_503.z));
  let x_506 : f32 = u_xlat23;
  u_xlat23 = clamp(x_506, 0.0f, 1.0f);
  let x_508 : vec4<f32> = u_xlat2;
  let x_510 : vec3<f32> = u_xlat6;
  u_xlat2.x = dot(vec3<f32>(x_508.x, x_508.y, x_508.z), x_510);
  let x_514 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_514, 0.0f, 1.0f);
  let x_517 : vec4<f32> = u_xlat5;
  let x_519 : vec3<f32> = u_xlat6;
  u_xlat9.x = dot(vec3<f32>(x_517.x, x_517.y, x_517.z), x_519);
  let x_523 : f32 = u_xlat9.x;
  u_xlat9.x = clamp(x_523, 0.0f, 1.0f);
  let x_528 : f32 = u_xlat9.x;
  let x_530 : f32 = u_xlat9.x;
  u_xlat16 = (x_528 * x_530);
  let x_532 : f32 = u_xlat16;
  let x_534 : f32 = u_xlat22;
  u_xlat16 = dot(vec2<f32>(x_532, x_532), vec2<f32>(x_534, x_534));
  let x_537 : f32 = u_xlat16;
  u_xlat16 = (x_537 + -0.5f);
  let x_540 : f32 = u_xlat23;
  u_xlat3.x = (-(x_540) + 1.0f);
  let x_546 : f32 = u_xlat3.x;
  let x_548 : f32 = u_xlat3.x;
  u_xlat10 = (x_546 * x_548);
  let x_550 : f32 = u_xlat10;
  let x_551 : f32 = u_xlat10;
  u_xlat10 = (x_550 * x_551);
  let x_554 : f32 = u_xlat3.x;
  let x_555 : f32 = u_xlat10;
  u_xlat3.x = (x_554 * x_555);
  let x_558 : f32 = u_xlat16;
  let x_560 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_558 * x_560) + 1.0f);
  let x_564 : f32 = u_xlat21;
  u_xlat10 = (-(abs(x_564)) + 1.0f);
  let x_569 : f32 = u_xlat10;
  let x_570 : f32 = u_xlat10;
  u_xlat17 = (x_569 * x_570);
  let x_572 : f32 = u_xlat17;
  let x_573 : f32 = u_xlat17;
  u_xlat17 = (x_572 * x_573);
  let x_575 : f32 = u_xlat10;
  let x_576 : f32 = u_xlat17;
  u_xlat10 = (x_575 * x_576);
  let x_578 : f32 = u_xlat16;
  let x_579 : f32 = u_xlat10;
  u_xlat16 = ((x_578 * x_579) + 1.0f);
  let x_582 : f32 = u_xlat16;
  let x_584 : f32 = u_xlat3.x;
  u_xlat16 = (x_582 * x_584);
  let x_586 : f32 = u_xlat23;
  let x_587 : f32 = u_xlat16;
  u_xlat16 = (x_586 * x_587);
  let x_589 : f32 = u_xlat22;
  let x_590 : f32 = u_xlat22;
  u_xlat22 = (x_589 * x_590);
  let x_592 : f32 = u_xlat22;
  u_xlat22 = max(x_592, 0.002f);
  let x_595 : f32 = u_xlat22;
  u_xlat3.x = (-(x_595) + 1.0f);
  let x_599 : f32 = u_xlat21;
  let x_602 : f32 = u_xlat3.x;
  let x_604 : f32 = u_xlat22;
  u_xlat10 = ((abs(x_599) * x_602) + x_604);
  let x_606 : f32 = u_xlat23;
  let x_608 : f32 = u_xlat3.x;
  let x_610 : f32 = u_xlat22;
  u_xlat3.x = ((x_606 * x_608) + x_610);
  let x_613 : f32 = u_xlat21;
  let x_616 : f32 = u_xlat3.x;
  u_xlat21 = (abs(x_613) * x_616);
  let x_618 : f32 = u_xlat23;
  let x_619 : f32 = u_xlat10;
  let x_621 : f32 = u_xlat21;
  u_xlat21 = ((x_618 * x_619) + x_621);
  let x_623 : f32 = u_xlat21;
  u_xlat21 = (x_623 + 0.00001f);
  let x_626 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_626);
  let x_628 : f32 = u_xlat22;
  let x_629 : f32 = u_xlat22;
  u_xlat22 = (x_628 * x_629);
  let x_632 : f32 = u_xlat2.x;
  let x_633 : f32 = u_xlat22;
  let x_636 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_632 * x_633) + -(x_636));
  let x_641 : f32 = u_xlat3.x;
  let x_643 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_641 * x_643) + 1.0f);
  let x_647 : f32 = u_xlat22;
  u_xlat22 = (x_647 * 0.318309873f);
  let x_651 : f32 = u_xlat2.x;
  let x_653 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_651 * x_653) + 0.0000001f);
  let x_658 : f32 = u_xlat22;
  let x_660 : f32 = u_xlat2.x;
  u_xlat22 = (x_658 / x_660);
  let x_662 : f32 = u_xlat21;
  let x_663 : f32 = u_xlat22;
  u_xlat21 = (x_662 * x_663);
  let x_665 : f32 = u_xlat23;
  let x_666 : f32 = u_xlat21;
  u_xlat21 = (x_665 * x_666);
  let x_668 : f32 = u_xlat21;
  u_xlat21 = (x_668 * 3.141592741f);
  let x_671 : f32 = u_xlat21;
  u_xlat21 = max(x_671, 0.0f);
  let x_673 : vec3<f32> = u_xlat0;
  let x_674 : vec3<f32> = u_xlat0;
  u_xlat22 = dot(x_673, x_674);
  let x_677 : f32 = u_xlat22;
  u_xlatb22 = !((x_677 == 0.0f));
  let x_679 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_679);
  let x_681 : f32 = u_xlat21;
  let x_682 : f32 = u_xlat22;
  u_xlat21 = (x_681 * x_682);
  let x_684 : f32 = u_xlat16;
  let x_686 : vec3<f32> = u_xlat4;
  let x_687 : vec3<f32> = (vec3<f32>(x_684, x_684, x_684) * x_686);
  let x_688 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_687.x, x_688.y, x_687.y, x_687.z);
  let x_690 : vec3<f32> = u_xlat4;
  let x_691 : f32 = u_xlat21;
  u_xlat3 = (x_690 * vec3<f32>(x_691, x_691, x_691));
  let x_695 : f32 = u_xlat9.x;
  u_xlat21 = (-(x_695) + 1.0f);
  let x_698 : f32 = u_xlat21;
  let x_699 : f32 = u_xlat21;
  u_xlat22 = (x_698 * x_699);
  let x_701 : f32 = u_xlat22;
  let x_702 : f32 = u_xlat22;
  u_xlat22 = (x_701 * x_702);
  let x_704 : f32 = u_xlat21;
  let x_705 : f32 = u_xlat22;
  u_xlat21 = (x_704 * x_705);
  let x_707 : vec3<f32> = u_xlat0;
  u_xlat4 = (-(x_707) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_711 : vec3<f32> = u_xlat4;
  let x_712 : f32 = u_xlat21;
  let x_715 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_711 * vec3<f32>(x_712, x_712, x_712)) + x_715);
  let x_717 : vec3<f32> = u_xlat0;
  let x_718 : vec3<f32> = u_xlat3;
  u_xlat0 = (x_717 * x_718);
  let x_722 : vec3<f32> = u_xlat1;
  let x_723 : vec4<f32> = u_xlat2;
  let x_726 : vec3<f32> = u_xlat0;
  let x_727 : vec3<f32> = ((x_722 * vec3<f32>(x_723.x, x_723.z, x_723.w)) + x_726);
  let x_728 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_727.x, x_727.y, x_727.z, x_728.w);
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

