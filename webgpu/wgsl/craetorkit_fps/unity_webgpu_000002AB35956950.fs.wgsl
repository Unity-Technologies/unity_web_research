struct PGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_LightColor0 : vec4<f32>,
  x_Color : vec4<f32>,
  x_BumpScale : f32,
  x_Metallic : f32,
  x_Glossiness : f32,
  @size(4)
  padding_2 : u32,
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

@group(0) @binding(2) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_LightTextureB0 : sampler;

@group(0) @binding(3) var x_LightTexture0 : texture_cube<f32>;

@group(0) @binding(8) var sampler_LightTexture0 : sampler;

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
  var u_xlatb21 : bool;
  var u_xlat5 : vec4<f32>;
  var x_278 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlat23 : f32;
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
  let x_197 : vec4<f32> = x_33.unity_WorldToLight[1i];
  u_xlat4 = (vec3<f32>(x_192.y, x_192.y, x_192.y) * vec3<f32>(x_197.x, x_197.y, x_197.z));
  let x_202 : vec4<f32> = x_33.unity_WorldToLight[0i];
  let x_204 : vec3<f32> = vs_TEXCOORD5;
  let x_207 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_202.x, x_202.y, x_202.z) * vec3<f32>(x_204.x, x_204.x, x_204.x)) + x_207);
  let x_211 : vec4<f32> = x_33.unity_WorldToLight[2i];
  let x_213 : vec3<f32> = vs_TEXCOORD5;
  let x_216 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_211.x, x_211.y, x_211.z) * vec3<f32>(x_213.z, x_213.z, x_213.z)) + x_216);
  let x_218 : vec3<f32> = u_xlat4;
  let x_221 : vec4<f32> = x_33.unity_WorldToLight[3i];
  u_xlat4 = (x_218 + vec3<f32>(x_221.x, x_221.y, x_221.z));
  let x_228 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb21 = (x_228 == 1.0f);
  let x_230 : bool = u_xlatb21;
  if (x_230) {
    let x_235 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb21 = (x_235 == 1.0f);
    let x_238 : vec3<f32> = vs_TEXCOORD5;
    let x_242 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_244 : vec3<f32> = (vec3<f32>(x_238.y, x_238.y, x_238.y) * vec3<f32>(x_242.x, x_242.y, x_242.z));
    let x_245 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_244.x, x_244.y, x_244.z, x_245.w);
    let x_248 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_250 : vec3<f32> = vs_TEXCOORD5;
    let x_253 : vec4<f32> = u_xlat5;
    let x_255 : vec3<f32> = ((vec3<f32>(x_248.x, x_248.y, x_248.z) * vec3<f32>(x_250.x, x_250.x, x_250.x)) + vec3<f32>(x_253.x, x_253.y, x_253.z));
    let x_256 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
    let x_259 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_261 : vec3<f32> = vs_TEXCOORD5;
    let x_264 : vec4<f32> = u_xlat5;
    let x_266 : vec3<f32> = ((vec3<f32>(x_259.x, x_259.y, x_259.z) * vec3<f32>(x_261.z, x_261.z, x_261.z)) + vec3<f32>(x_264.x, x_264.y, x_264.z));
    let x_267 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_266.x, x_266.y, x_266.z, x_267.w);
    let x_269 : vec4<f32> = u_xlat5;
    let x_272 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_274 : vec3<f32> = (vec3<f32>(x_269.x, x_269.y, x_269.z) + vec3<f32>(x_272.x, x_272.y, x_272.z));
    let x_275 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_274.x, x_274.y, x_274.z, x_275.w);
    let x_277 : bool = u_xlatb21;
    if (x_277) {
      let x_281 : vec4<f32> = u_xlat5;
      x_278 = vec3<f32>(x_281.x, x_281.y, x_281.z);
    } else {
      let x_284 : vec3<f32> = vs_TEXCOORD5;
      x_278 = x_284;
    }
    let x_285 : vec3<f32> = x_278;
    let x_286 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_285.x, x_285.y, x_285.z, x_286.w);
    let x_288 : vec4<f32> = u_xlat5;
    let x_293 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_295 : vec3<f32> = (vec3<f32>(x_288.x, x_288.y, x_288.z) + -(x_293));
    let x_296 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_295.x, x_295.y, x_295.z, x_296.w);
    let x_298 : vec4<f32> = u_xlat5;
    let x_302 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_303 : vec3<f32> = (vec3<f32>(x_298.x, x_298.y, x_298.z) * x_302);
    let x_304 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_304.x, x_303.x, x_303.y, x_303.z);
    let x_307 : f32 = u_xlat5.y;
    u_xlat21 = ((x_307 * 0.25f) + 0.75f);
    let x_314 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat22 = ((x_314 * 0.5f) + 0.75f);
    let x_318 : f32 = u_xlat21;
    let x_319 : f32 = u_xlat22;
    u_xlat5.x = max(x_318, x_319);
    let x_330 : vec4<f32> = u_xlat5;
    let x_332 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_330.x, x_330.z, x_330.w));
    u_xlat5 = x_332;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_339 : vec4<f32> = u_xlat5;
  let x_341 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat21 = dot(x_339, x_341);
  let x_343 : f32 = u_xlat21;
  u_xlat21 = clamp(x_343, 0.0f, 1.0f);
  let x_346 : vec3<f32> = u_xlat4;
  let x_347 : vec3<f32> = u_xlat4;
  u_xlat22 = dot(x_346, x_347);
  let x_354 : f32 = u_xlat22;
  let x_356 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_354, x_354));
  u_xlat22 = x_356.x;
  let x_367 : vec3<f32> = u_xlat4;
  let x_368 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, x_367);
  u_xlat23 = x_368.w;
  let x_370 : f32 = u_xlat22;
  let x_371 : f32 = u_xlat23;
  u_xlat22 = (x_370 * x_371);
  let x_373 : f32 = u_xlat21;
  let x_374 : f32 = u_xlat22;
  u_xlat21 = (x_373 * x_374);
  let x_378 : f32 = vs_TEXCOORD2.w;
  u_xlat4.x = x_378;
  let x_381 : f32 = vs_TEXCOORD3.w;
  u_xlat4.y = x_381;
  let x_384 : f32 = vs_TEXCOORD4.w;
  u_xlat4.z = x_384;
  let x_386 : vec3<f32> = u_xlat4;
  let x_387 : vec3<f32> = u_xlat4;
  u_xlat22 = dot(x_386, x_387);
  let x_389 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_389);
  let x_391 : f32 = u_xlat22;
  let x_393 : vec3<f32> = u_xlat4;
  let x_394 : vec3<f32> = (vec3<f32>(x_391, x_391, x_391) * x_393);
  let x_395 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_394.x, x_394.y, x_394.z, x_395.w);
  let x_398 : f32 = u_xlat21;
  let x_402 : vec4<f32> = x_33.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_398, x_398, x_398) * vec3<f32>(x_402.x, x_402.y, x_402.z));
  let x_407 : f32 = x_33.x_Glossiness;
  u_xlat21 = (-(x_407) + 1.0f);
  let x_410 : vec3<f32> = u_xlat4;
  let x_411 : f32 = u_xlat22;
  let x_414 : vec3<f32> = u_xlat3;
  u_xlat4 = ((x_410 * vec3<f32>(x_411, x_411, x_411)) + -(x_414));
  let x_417 : vec3<f32> = u_xlat4;
  let x_418 : vec3<f32> = u_xlat4;
  u_xlat22 = dot(x_417, x_418);
  let x_420 : f32 = u_xlat22;
  u_xlat22 = max(x_420, 0.001f);
  let x_423 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_423);
  let x_425 : f32 = u_xlat22;
  let x_427 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_425, x_425, x_425) * x_427);
  let x_429 : vec4<f32> = u_xlat2;
  let x_431 : vec3<f32> = u_xlat3;
  u_xlat22 = dot(vec3<f32>(x_429.x, x_429.y, x_429.z), -(x_431));
  let x_434 : vec4<f32> = u_xlat2;
  let x_436 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_434.x, x_434.y, x_434.z), vec3<f32>(x_436.x, x_436.y, x_436.z));
  let x_439 : f32 = u_xlat23;
  u_xlat23 = clamp(x_439, 0.0f, 1.0f);
  let x_441 : vec4<f32> = u_xlat2;
  let x_443 : vec3<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_441.x, x_441.y, x_441.z), x_443);
  let x_447 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_447, 0.0f, 1.0f);
  let x_450 : vec4<f32> = u_xlat5;
  let x_452 : vec3<f32> = u_xlat4;
  u_xlat9.x = dot(vec3<f32>(x_450.x, x_450.y, x_450.z), x_452);
  let x_456 : f32 = u_xlat9.x;
  u_xlat9.x = clamp(x_456, 0.0f, 1.0f);
  let x_461 : f32 = u_xlat9.x;
  let x_463 : f32 = u_xlat9.x;
  u_xlat16 = (x_461 * x_463);
  let x_465 : f32 = u_xlat16;
  let x_467 : f32 = u_xlat21;
  u_xlat16 = dot(vec2<f32>(x_465, x_465), vec2<f32>(x_467, x_467));
  let x_470 : f32 = u_xlat16;
  u_xlat16 = (x_470 + -0.5f);
  let x_473 : f32 = u_xlat23;
  u_xlat3.x = (-(x_473) + 1.0f);
  let x_479 : f32 = u_xlat3.x;
  let x_481 : f32 = u_xlat3.x;
  u_xlat10 = (x_479 * x_481);
  let x_483 : f32 = u_xlat10;
  let x_484 : f32 = u_xlat10;
  u_xlat10 = (x_483 * x_484);
  let x_487 : f32 = u_xlat3.x;
  let x_488 : f32 = u_xlat10;
  u_xlat3.x = (x_487 * x_488);
  let x_491 : f32 = u_xlat16;
  let x_493 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_491 * x_493) + 1.0f);
  let x_497 : f32 = u_xlat22;
  u_xlat10 = (-(abs(x_497)) + 1.0f);
  let x_502 : f32 = u_xlat10;
  let x_503 : f32 = u_xlat10;
  u_xlat17 = (x_502 * x_503);
  let x_505 : f32 = u_xlat17;
  let x_506 : f32 = u_xlat17;
  u_xlat17 = (x_505 * x_506);
  let x_508 : f32 = u_xlat10;
  let x_509 : f32 = u_xlat17;
  u_xlat10 = (x_508 * x_509);
  let x_511 : f32 = u_xlat16;
  let x_512 : f32 = u_xlat10;
  u_xlat16 = ((x_511 * x_512) + 1.0f);
  let x_515 : f32 = u_xlat16;
  let x_517 : f32 = u_xlat3.x;
  u_xlat16 = (x_515 * x_517);
  let x_519 : f32 = u_xlat23;
  let x_520 : f32 = u_xlat16;
  u_xlat16 = (x_519 * x_520);
  let x_522 : f32 = u_xlat21;
  let x_523 : f32 = u_xlat21;
  u_xlat21 = (x_522 * x_523);
  let x_525 : f32 = u_xlat21;
  u_xlat21 = max(x_525, 0.002f);
  let x_528 : f32 = u_xlat21;
  u_xlat3.x = (-(x_528) + 1.0f);
  let x_532 : f32 = u_xlat22;
  let x_535 : f32 = u_xlat3.x;
  let x_537 : f32 = u_xlat21;
  u_xlat10 = ((abs(x_532) * x_535) + x_537);
  let x_539 : f32 = u_xlat23;
  let x_541 : f32 = u_xlat3.x;
  let x_543 : f32 = u_xlat21;
  u_xlat3.x = ((x_539 * x_541) + x_543);
  let x_546 : f32 = u_xlat22;
  let x_549 : f32 = u_xlat3.x;
  u_xlat22 = (abs(x_546) * x_549);
  let x_551 : f32 = u_xlat23;
  let x_552 : f32 = u_xlat10;
  let x_554 : f32 = u_xlat22;
  u_xlat22 = ((x_551 * x_552) + x_554);
  let x_556 : f32 = u_xlat22;
  u_xlat22 = (x_556 + 0.00001f);
  let x_559 : f32 = u_xlat22;
  u_xlat22 = (0.5f / x_559);
  let x_561 : f32 = u_xlat21;
  let x_562 : f32 = u_xlat21;
  u_xlat21 = (x_561 * x_562);
  let x_565 : f32 = u_xlat2.x;
  let x_566 : f32 = u_xlat21;
  let x_569 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_565 * x_566) + -(x_569));
  let x_574 : f32 = u_xlat3.x;
  let x_576 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_574 * x_576) + 1.0f);
  let x_580 : f32 = u_xlat21;
  u_xlat21 = (x_580 * 0.318309873f);
  let x_584 : f32 = u_xlat2.x;
  let x_586 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_584 * x_586) + 0.0000001f);
  let x_591 : f32 = u_xlat21;
  let x_593 : f32 = u_xlat2.x;
  u_xlat21 = (x_591 / x_593);
  let x_595 : f32 = u_xlat21;
  let x_596 : f32 = u_xlat22;
  u_xlat21 = (x_595 * x_596);
  let x_598 : f32 = u_xlat23;
  let x_599 : f32 = u_xlat21;
  u_xlat21 = (x_598 * x_599);
  let x_601 : f32 = u_xlat21;
  u_xlat21 = (x_601 * 3.141592741f);
  let x_604 : f32 = u_xlat21;
  u_xlat21 = max(x_604, 0.0f);
  let x_606 : vec3<f32> = u_xlat0;
  let x_607 : vec3<f32> = u_xlat0;
  u_xlat22 = dot(x_606, x_607);
  let x_610 : f32 = u_xlat22;
  u_xlatb22 = !((x_610 == 0.0f));
  let x_612 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_612);
  let x_614 : f32 = u_xlat21;
  let x_615 : f32 = u_xlat22;
  u_xlat21 = (x_614 * x_615);
  let x_617 : f32 = u_xlat16;
  let x_619 : vec3<f32> = u_xlat6;
  let x_620 : vec3<f32> = (vec3<f32>(x_617, x_617, x_617) * x_619);
  let x_621 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_620.x, x_621.y, x_620.y, x_620.z);
  let x_623 : vec3<f32> = u_xlat6;
  let x_624 : f32 = u_xlat21;
  u_xlat3 = (x_623 * vec3<f32>(x_624, x_624, x_624));
  let x_628 : f32 = u_xlat9.x;
  u_xlat21 = (-(x_628) + 1.0f);
  let x_631 : f32 = u_xlat21;
  let x_632 : f32 = u_xlat21;
  u_xlat22 = (x_631 * x_632);
  let x_634 : f32 = u_xlat22;
  let x_635 : f32 = u_xlat22;
  u_xlat22 = (x_634 * x_635);
  let x_637 : f32 = u_xlat21;
  let x_638 : f32 = u_xlat22;
  u_xlat21 = (x_637 * x_638);
  let x_640 : vec3<f32> = u_xlat0;
  u_xlat4 = (-(x_640) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_644 : vec3<f32> = u_xlat4;
  let x_645 : f32 = u_xlat21;
  let x_648 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_644 * vec3<f32>(x_645, x_645, x_645)) + x_648);
  let x_650 : vec3<f32> = u_xlat0;
  let x_651 : vec3<f32> = u_xlat3;
  u_xlat0 = (x_650 * x_651);
  let x_653 : vec3<f32> = u_xlat1;
  let x_654 : vec4<f32> = u_xlat2;
  let x_657 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_653 * vec3<f32>(x_654.x, x_654.z, x_654.w)) + x_657);
  let x_660 : f32 = vs_TEXCOORD1.w;
  let x_662 : f32 = x_33.x_ProjectionParams.y;
  u_xlat21 = (x_660 / x_662);
  let x_664 : f32 = u_xlat21;
  u_xlat21 = (-(x_664) + 1.0f);
  let x_667 : f32 = u_xlat21;
  let x_669 : f32 = x_33.x_ProjectionParams.z;
  u_xlat21 = (x_667 * x_669);
  let x_671 : f32 = u_xlat21;
  u_xlat21 = max(x_671, 0.0f);
  let x_673 : f32 = u_xlat21;
  let x_675 : f32 = x_33.unity_FogParams.x;
  u_xlat21 = (x_673 * x_675);
  let x_677 : f32 = u_xlat21;
  let x_678 : f32 = u_xlat21;
  u_xlat21 = (x_677 * -(x_678));
  let x_681 : f32 = u_xlat21;
  u_xlat21 = exp2(x_681);
  let x_685 : vec3<f32> = u_xlat0;
  let x_686 : f32 = u_xlat21;
  let x_688 : vec3<f32> = (x_685 * vec3<f32>(x_686, x_686, x_686));
  let x_689 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_688.x, x_688.y, x_688.z, x_689.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

