struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
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
  x_Glossiness : f32,
  x_Metallic : f32,
  @size(8)
  padding_3 : u32,
  x_Color : vec4<f32>,
  x_Cutoff : f32,
  x_EdgeSize : f32,
}

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_18 : PGlobals;

@group(0) @binding(0) var x_DissolveNoise : texture_2d<f32>;

@group(0) @binding(13) var sampler_DissolveNoise : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainTex : sampler;

@group(0) @binding(2) var x_Specular : texture_2d<f32>;

@group(0) @binding(12) var sampler_Specular : sampler;

@group(0) @binding(3) var x_NormalMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_NormalMap : sampler;

@group(0) @binding(6) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(7) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(4) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_LightTextureB0 : sampler;

@group(0) @binding(5) var x_LightTexture0 : texture_cube<f32>;

@group(0) @binding(8) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat24 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat25 : f32;
  var u_xlat26 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat27 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlatb25 : bool;
  var u_xlat7 : vec4<f32>;
  var x_278 : vec3<f32>;
  var u_xlat10 : f32;
  var u_xlat8 : vec3<f32>;
  var u_xlat16 : f32;
  var u_xlat9 : f32;
  var u_xlatb24 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD4;
  let x_23 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = (-(x_12) + vec3<f32>(x_23.x, x_23.y, x_23.z));
  let x_28 : vec3<f32> = u_xlat0;
  let x_29 : vec3<f32> = u_xlat0;
  u_xlat24 = dot(x_28, x_29);
  let x_31 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_31);
  let x_34 : f32 = u_xlat24;
  let x_36 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_34, x_34, x_34) * x_36);
  let x_39 : vec3<f32> = vs_TEXCOORD4;
  let x_44 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_39) + x_44);
  let x_47 : vec3<f32> = u_xlat2;
  let x_48 : vec3<f32> = u_xlat2;
  u_xlat25 = dot(x_47, x_48);
  let x_50 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_50);
  let x_52 : f32 = u_xlat25;
  let x_54 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_52, x_52, x_52) * x_54);
  let x_69 : vec2<f32> = vs_TEXCOORD0;
  let x_70 : vec4<f32> = textureSample(x_DissolveNoise, sampler_DissolveNoise, x_69);
  u_xlat25 = x_70.x;
  let x_78 : f32 = x_18.x_EdgeSize;
  let x_81 : f32 = x_18.x_Cutoff;
  u_xlat26 = (x_78 + x_81);
  let x_90 : vec2<f32> = vs_TEXCOORD0;
  let x_91 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_90);
  u_xlat3 = x_91;
  let x_93 : vec4<f32> = u_xlat3;
  let x_96 : vec4<f32> = x_18.x_Color;
  u_xlat4 = (x_93 * x_96);
  let x_104 : vec2<f32> = vs_TEXCOORD0;
  let x_105 : vec4<f32> = textureSample(x_Specular, sampler_Specular, x_104);
  let x_106 : vec2<f32> = vec2<f32>(x_105.x, x_105.w);
  let x_107 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_106.x, x_106.y, x_107.z, x_107.w);
  let x_111 : f32 = u_xlat5.x;
  let x_114 : f32 = x_18.x_Metallic;
  u_xlat27 = (x_111 * x_114);
  let x_121 : vec2<f32> = vs_TEXCOORD0;
  let x_122 : vec4<f32> = textureSample(x_NormalMap, sampler_NormalMap, x_121);
  let x_123 : vec3<f32> = vec3<f32>(x_122.x, x_122.y, x_122.w);
  let x_124 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_123.x, x_124.y, x_123.y, x_123.z);
  let x_128 : f32 = u_xlat5.w;
  let x_130 : f32 = u_xlat5.x;
  u_xlat5.x = (x_128 * x_130);
  let x_134 : vec4<f32> = u_xlat5;
  let x_141 : vec2<f32> = ((vec2<f32>(x_134.x, x_134.z) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_142 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_141.x, x_141.y, x_142.z);
  let x_144 : vec3<f32> = u_xlat6;
  let x_146 : vec3<f32> = u_xlat6;
  u_xlat5.x = dot(vec2<f32>(x_144.x, x_144.y), vec2<f32>(x_146.x, x_146.y));
  let x_151 : f32 = u_xlat5.x;
  u_xlat5.x = min(x_151, 1.0f);
  let x_156 : f32 = u_xlat5.x;
  u_xlat5.x = (-(x_156) + 1.0f);
  let x_161 : f32 = u_xlat5.x;
  u_xlat6.z = sqrt(x_161);
  let x_166 : f32 = x_18.x_Cutoff;
  let x_168 : f32 = u_xlat26;
  let x_170 : f32 = u_xlat25;
  u_xlat25 = ((-(x_166) * x_168) + x_170);
  let x_175 : f32 = u_xlat25;
  u_xlatb25 = (x_175 < 0.0f);
  let x_178 : bool = u_xlatb25;
  if (((select(0i, 1i, x_178) * -1i) != 0i)) {
    discard;
  }
  let x_186 : vec3<f32> = vs_TEXCOORD4;
  let x_190 : vec4<f32> = x_18.unity_WorldToLight[1i];
  let x_192 : vec3<f32> = (vec3<f32>(x_186.y, x_186.y, x_186.y) * vec3<f32>(x_190.x, x_190.y, x_190.z));
  let x_193 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_192.x, x_193.y, x_192.y, x_192.z);
  let x_196 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_198 : vec3<f32> = vs_TEXCOORD4;
  let x_201 : vec4<f32> = u_xlat5;
  let x_203 : vec3<f32> = ((vec3<f32>(x_196.x, x_196.y, x_196.z) * vec3<f32>(x_198.x, x_198.x, x_198.x)) + vec3<f32>(x_201.x, x_201.z, x_201.w));
  let x_204 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_203.x, x_204.y, x_203.y, x_203.z);
  let x_208 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_210 : vec3<f32> = vs_TEXCOORD4;
  let x_213 : vec4<f32> = u_xlat5;
  let x_215 : vec3<f32> = ((vec3<f32>(x_208.x, x_208.y, x_208.z) * vec3<f32>(x_210.z, x_210.z, x_210.z)) + vec3<f32>(x_213.x, x_213.z, x_213.w));
  let x_216 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_215.x, x_216.y, x_215.y, x_215.z);
  let x_218 : vec4<f32> = u_xlat5;
  let x_222 : vec4<f32> = x_18.unity_WorldToLight[3i];
  let x_224 : vec3<f32> = (vec3<f32>(x_218.x, x_218.z, x_218.w) + vec3<f32>(x_222.x, x_222.y, x_222.z));
  let x_225 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_224.x, x_225.y, x_224.y, x_224.z);
  let x_228 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb25 = (x_228 == 1.0f);
  let x_230 : bool = u_xlatb25;
  if (x_230) {
    let x_235 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb25 = (x_235 == 1.0f);
    let x_238 : vec3<f32> = vs_TEXCOORD4;
    let x_242 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_244 : vec3<f32> = (vec3<f32>(x_238.y, x_238.y, x_238.y) * vec3<f32>(x_242.x, x_242.y, x_242.z));
    let x_245 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_244.x, x_244.y, x_244.z, x_245.w);
    let x_248 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_250 : vec3<f32> = vs_TEXCOORD4;
    let x_253 : vec4<f32> = u_xlat7;
    let x_255 : vec3<f32> = ((vec3<f32>(x_248.x, x_248.y, x_248.z) * vec3<f32>(x_250.x, x_250.x, x_250.x)) + vec3<f32>(x_253.x, x_253.y, x_253.z));
    let x_256 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
    let x_259 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_261 : vec3<f32> = vs_TEXCOORD4;
    let x_264 : vec4<f32> = u_xlat7;
    let x_266 : vec3<f32> = ((vec3<f32>(x_259.x, x_259.y, x_259.z) * vec3<f32>(x_261.z, x_261.z, x_261.z)) + vec3<f32>(x_264.x, x_264.y, x_264.z));
    let x_267 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_266.x, x_266.y, x_266.z, x_267.w);
    let x_269 : vec4<f32> = u_xlat7;
    let x_272 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_274 : vec3<f32> = (vec3<f32>(x_269.x, x_269.y, x_269.z) + vec3<f32>(x_272.x, x_272.y, x_272.z));
    let x_275 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_274.x, x_274.y, x_274.z, x_275.w);
    let x_277 : bool = u_xlatb25;
    if (x_277) {
      let x_281 : vec4<f32> = u_xlat7;
      x_278 = vec3<f32>(x_281.x, x_281.y, x_281.z);
    } else {
      let x_284 : vec3<f32> = vs_TEXCOORD4;
      x_278 = x_284;
    }
    let x_285 : vec3<f32> = x_278;
    let x_286 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_285.x, x_285.y, x_285.z, x_286.w);
    let x_288 : vec4<f32> = u_xlat7;
    let x_292 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_294 : vec3<f32> = (vec3<f32>(x_288.x, x_288.y, x_288.z) + -(x_292));
    let x_295 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_294.x, x_294.y, x_294.z, x_295.w);
    let x_297 : vec4<f32> = u_xlat7;
    let x_301 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_302 : vec3<f32> = (vec3<f32>(x_297.x, x_297.y, x_297.z) * x_301);
    let x_303 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_303.x, x_302.x, x_302.y, x_302.z);
    let x_306 : f32 = u_xlat7.y;
    u_xlat25 = ((x_306 * 0.25f) + 0.75f);
    let x_312 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat26 = ((x_312 * 0.5f) + 0.75f);
    let x_316 : f32 = u_xlat25;
    let x_317 : f32 = u_xlat26;
    u_xlat7.x = max(x_316, x_317);
    let x_328 : vec4<f32> = u_xlat7;
    let x_330 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_328.x, x_328.z, x_328.w));
    u_xlat7 = x_330;
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
    u_xlat7.w = 1.0f;
  }
  let x_336 : vec4<f32> = u_xlat7;
  let x_338 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat25 = dot(x_336, x_338);
  let x_340 : f32 = u_xlat25;
  u_xlat25 = clamp(x_340, 0.0f, 1.0f);
  let x_342 : vec4<f32> = u_xlat5;
  let x_344 : vec4<f32> = u_xlat5;
  u_xlat26 = dot(vec3<f32>(x_342.x, x_342.z, x_342.w), vec3<f32>(x_344.x, x_344.z, x_344.w));
  let x_352 : f32 = u_xlat26;
  let x_354 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_352, x_352));
  u_xlat26 = x_354.x;
  let x_364 : vec4<f32> = u_xlat5;
  let x_366 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec3<f32>(x_364.x, x_364.z, x_364.w));
  u_xlat5.x = x_366.w;
  let x_369 : f32 = u_xlat26;
  let x_371 : f32 = u_xlat5.x;
  u_xlat26 = (x_369 * x_371);
  let x_373 : f32 = u_xlat25;
  let x_374 : f32 = u_xlat26;
  u_xlat25 = (x_373 * x_374);
  let x_377 : vec3<f32> = vs_TEXCOORD1;
  let x_378 : vec3<f32> = u_xlat6;
  u_xlat7.x = dot(x_377, x_378);
  let x_382 : vec3<f32> = vs_TEXCOORD2;
  let x_383 : vec3<f32> = u_xlat6;
  u_xlat7.y = dot(x_382, x_383);
  let x_387 : vec3<f32> = vs_TEXCOORD3;
  let x_388 : vec3<f32> = u_xlat6;
  u_xlat7.z = dot(x_387, x_388);
  let x_391 : vec4<f32> = u_xlat7;
  let x_393 : vec4<f32> = u_xlat7;
  u_xlat26 = dot(vec3<f32>(x_391.x, x_391.y, x_391.z), vec3<f32>(x_393.x, x_393.y, x_393.z));
  let x_396 : f32 = u_xlat26;
  u_xlat26 = inverseSqrt(x_396);
  let x_398 : f32 = u_xlat26;
  let x_400 : vec4<f32> = u_xlat7;
  let x_402 : vec3<f32> = (vec3<f32>(x_398, x_398, x_398) * vec3<f32>(x_400.x, x_400.y, x_400.z));
  let x_403 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_402.x, x_403.y, x_402.y, x_402.z);
  let x_405 : f32 = u_xlat25;
  let x_409 : vec4<f32> = x_18.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_405, x_405, x_405) * vec3<f32>(x_409.x, x_409.y, x_409.z));
  let x_412 : vec4<f32> = u_xlat3;
  let x_415 : vec4<f32> = x_18.x_Color;
  let x_420 : vec3<f32> = ((vec3<f32>(x_412.x, x_412.y, x_412.z) * vec3<f32>(x_415.x, x_415.y, x_415.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_421 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_420.x, x_420.y, x_420.z, x_421.w);
  let x_423 : f32 = u_xlat27;
  let x_425 : vec4<f32> = u_xlat3;
  let x_430 : vec3<f32> = ((vec3<f32>(x_423, x_423, x_423) * vec3<f32>(x_425.x, x_425.y, x_425.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_431 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_430.x, x_430.y, x_430.z, x_431.w);
  let x_433 : f32 = u_xlat27;
  u_xlat25 = ((-(x_433) * 0.959999979f) + 0.959999979f);
  let x_438 : f32 = u_xlat25;
  let x_440 : vec4<f32> = u_xlat4;
  let x_442 : vec3<f32> = (vec3<f32>(x_438, x_438, x_438) * vec3<f32>(x_440.x, x_440.y, x_440.z));
  let x_443 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_442.x, x_442.y, x_442.z, x_443.w);
  let x_446 : f32 = u_xlat5.y;
  let x_450 : f32 = x_18.x_Glossiness;
  u_xlat25 = ((-(x_446) * x_450) + 1.0f);
  let x_453 : vec3<f32> = u_xlat0;
  let x_454 : f32 = u_xlat24;
  let x_457 : vec3<f32> = u_xlat2;
  u_xlat0 = ((x_453 * vec3<f32>(x_454, x_454, x_454)) + x_457);
  let x_459 : vec3<f32> = u_xlat0;
  let x_460 : vec3<f32> = u_xlat0;
  u_xlat24 = dot(x_459, x_460);
  let x_462 : f32 = u_xlat24;
  u_xlat24 = max(x_462, 0.001f);
  let x_465 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_465);
  let x_467 : f32 = u_xlat24;
  let x_469 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_467, x_467, x_467) * x_469);
  let x_471 : vec4<f32> = u_xlat5;
  let x_473 : vec3<f32> = u_xlat2;
  u_xlat24 = dot(vec3<f32>(x_471.x, x_471.z, x_471.w), x_473);
  let x_475 : vec4<f32> = u_xlat5;
  let x_477 : vec3<f32> = u_xlat1;
  u_xlat2.x = dot(vec3<f32>(x_475.x, x_475.z, x_475.w), x_477);
  let x_481 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_481, 0.0f, 1.0f);
  let x_485 : vec4<f32> = u_xlat5;
  let x_487 : vec3<f32> = u_xlat0;
  u_xlat10 = dot(vec3<f32>(x_485.x, x_485.z, x_485.w), x_487);
  let x_489 : f32 = u_xlat10;
  u_xlat10 = clamp(x_489, 0.0f, 1.0f);
  let x_491 : vec3<f32> = u_xlat1;
  let x_492 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_491, x_492);
  let x_496 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_496, 0.0f, 1.0f);
  let x_501 : f32 = u_xlat0.x;
  let x_503 : f32 = u_xlat0.x;
  u_xlat8.x = (x_501 * x_503);
  let x_506 : vec3<f32> = u_xlat8;
  let x_508 : f32 = u_xlat25;
  u_xlat8.x = dot(vec2<f32>(x_506.x, x_506.x), vec2<f32>(x_508, x_508));
  let x_513 : f32 = u_xlat8.x;
  u_xlat8.x = (x_513 + -0.5f);
  let x_519 : f32 = u_xlat2.x;
  u_xlat16 = (-(x_519) + 1.0f);
  let x_522 : f32 = u_xlat16;
  let x_523 : f32 = u_xlat16;
  u_xlat1.x = (x_522 * x_523);
  let x_527 : f32 = u_xlat1.x;
  let x_529 : f32 = u_xlat1.x;
  u_xlat1.x = (x_527 * x_529);
  let x_532 : f32 = u_xlat16;
  let x_534 : f32 = u_xlat1.x;
  u_xlat16 = (x_532 * x_534);
  let x_537 : f32 = u_xlat8.x;
  let x_538 : f32 = u_xlat16;
  u_xlat16 = ((x_537 * x_538) + 1.0f);
  let x_541 : f32 = u_xlat24;
  u_xlat1.x = (-(abs(x_541)) + 1.0f);
  let x_548 : f32 = u_xlat1.x;
  let x_550 : f32 = u_xlat1.x;
  u_xlat9 = (x_548 * x_550);
  let x_552 : f32 = u_xlat9;
  let x_553 : f32 = u_xlat9;
  u_xlat9 = (x_552 * x_553);
  let x_556 : f32 = u_xlat1.x;
  let x_557 : f32 = u_xlat9;
  u_xlat1.x = (x_556 * x_557);
  let x_561 : f32 = u_xlat8.x;
  let x_563 : f32 = u_xlat1.x;
  u_xlat8.x = ((x_561 * x_563) + 1.0f);
  let x_568 : f32 = u_xlat8.x;
  let x_569 : f32 = u_xlat16;
  u_xlat8.x = (x_568 * x_569);
  let x_572 : f32 = u_xlat25;
  let x_573 : f32 = u_xlat25;
  u_xlat16 = (x_572 * x_573);
  let x_575 : f32 = u_xlat16;
  u_xlat16 = max(x_575, 0.002f);
  let x_578 : f32 = u_xlat16;
  u_xlat1.x = (-(x_578) + 1.0f);
  let x_582 : f32 = u_xlat24;
  let x_585 : f32 = u_xlat1.x;
  let x_587 : f32 = u_xlat16;
  u_xlat9 = ((abs(x_582) * x_585) + x_587);
  let x_590 : f32 = u_xlat2.x;
  let x_592 : f32 = u_xlat1.x;
  let x_594 : f32 = u_xlat16;
  u_xlat1.x = ((x_590 * x_592) + x_594);
  let x_597 : f32 = u_xlat24;
  let x_600 : f32 = u_xlat1.x;
  u_xlat24 = (abs(x_597) * x_600);
  let x_603 : f32 = u_xlat2.x;
  let x_604 : f32 = u_xlat9;
  let x_606 : f32 = u_xlat24;
  u_xlat24 = ((x_603 * x_604) + x_606);
  let x_608 : f32 = u_xlat24;
  u_xlat24 = (x_608 + 0.00001f);
  let x_611 : f32 = u_xlat24;
  u_xlat24 = (0.5f / x_611);
  let x_613 : f32 = u_xlat16;
  let x_614 : f32 = u_xlat16;
  u_xlat16 = (x_613 * x_614);
  let x_616 : f32 = u_xlat10;
  let x_617 : f32 = u_xlat16;
  let x_619 : f32 = u_xlat10;
  u_xlat1.x = ((x_616 * x_617) + -(x_619));
  let x_624 : f32 = u_xlat1.x;
  let x_625 : f32 = u_xlat10;
  u_xlat1.x = ((x_624 * x_625) + 1.0f);
  let x_629 : f32 = u_xlat16;
  u_xlat16 = (x_629 * 0.318309873f);
  let x_633 : f32 = u_xlat1.x;
  let x_635 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_633 * x_635) + 0.0000001f);
  let x_640 : f32 = u_xlat16;
  let x_642 : f32 = u_xlat1.x;
  u_xlat16 = (x_640 / x_642);
  let x_644 : f32 = u_xlat16;
  let x_645 : f32 = u_xlat24;
  u_xlat8.y = (x_644 * x_645);
  let x_648 : vec3<f32> = u_xlat2;
  let x_650 : vec3<f32> = u_xlat8;
  let x_652 : vec2<f32> = (vec2<f32>(x_648.x, x_648.x) * vec2<f32>(x_650.x, x_650.y));
  let x_653 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_652.x, x_652.y, x_653.z);
  let x_656 : f32 = u_xlat8.y;
  u_xlat16 = (x_656 * 3.141592741f);
  let x_659 : f32 = u_xlat16;
  u_xlat16 = max(x_659, 0.0f);
  let x_661 : vec4<f32> = u_xlat3;
  let x_663 : vec4<f32> = u_xlat3;
  u_xlat24 = dot(vec3<f32>(x_661.x, x_661.y, x_661.z), vec3<f32>(x_663.x, x_663.y, x_663.z));
  let x_667 : f32 = u_xlat24;
  u_xlatb24 = !((x_667 == 0.0f));
  let x_669 : bool = u_xlatb24;
  u_xlat24 = select(0.0f, 1.0f, x_669);
  let x_671 : f32 = u_xlat24;
  let x_672 : f32 = u_xlat16;
  u_xlat16 = (x_671 * x_672);
  let x_674 : vec3<f32> = u_xlat8;
  let x_676 : vec3<f32> = u_xlat6;
  u_xlat1 = (vec3<f32>(x_674.x, x_674.x, x_674.x) * x_676);
  let x_678 : vec3<f32> = u_xlat6;
  let x_679 : f32 = u_xlat16;
  u_xlat8 = (x_678 * vec3<f32>(x_679, x_679, x_679));
  let x_683 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_683) + 1.0f);
  let x_688 : f32 = u_xlat0.x;
  let x_690 : f32 = u_xlat0.x;
  u_xlat25 = (x_688 * x_690);
  let x_692 : f32 = u_xlat25;
  let x_693 : f32 = u_xlat25;
  u_xlat25 = (x_692 * x_693);
  let x_696 : f32 = u_xlat0.x;
  let x_697 : f32 = u_xlat25;
  u_xlat0.x = (x_696 * x_697);
  let x_700 : vec4<f32> = u_xlat3;
  u_xlat2 = (-(vec3<f32>(x_700.x, x_700.y, x_700.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_705 : vec3<f32> = u_xlat2;
  let x_706 : vec3<f32> = u_xlat0;
  let x_709 : vec4<f32> = u_xlat3;
  u_xlat2 = ((x_705 * vec3<f32>(x_706.x, x_706.x, x_706.x)) + vec3<f32>(x_709.x, x_709.y, x_709.z));
  let x_712 : vec3<f32> = u_xlat8;
  let x_713 : vec3<f32> = u_xlat2;
  u_xlat0 = (x_712 * x_713);
  let x_717 : vec4<f32> = u_xlat4;
  let x_719 : vec3<f32> = u_xlat1;
  let x_721 : vec3<f32> = u_xlat0;
  let x_722 : vec3<f32> = ((vec3<f32>(x_717.x, x_717.y, x_717.z) * x_719) + x_721);
  let x_723 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_722.x, x_722.y, x_722.z, x_723.w);
  let x_726 : f32 = u_xlat4.w;
  SV_Target0.w = x_726;
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

