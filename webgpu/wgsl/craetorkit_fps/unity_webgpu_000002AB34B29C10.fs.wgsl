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

@group(0) @binding(11) var sampler_DissolveNoise : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

@group(0) @binding(2) var x_Specular : texture_2d<f32>;

@group(0) @binding(10) var sampler_Specular : sampler;

@group(0) @binding(3) var x_NormalMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_NormalMap : sampler;

@group(0) @binding(5) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(6) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(4) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(7) var sampler_LightTexture0 : sampler;

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
  let x_354 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_352, x_352));
  u_xlat26 = x_354.x;
  let x_356 : f32 = u_xlat25;
  let x_357 : f32 = u_xlat26;
  u_xlat25 = (x_356 * x_357);
  let x_360 : vec3<f32> = vs_TEXCOORD1;
  let x_361 : vec3<f32> = u_xlat6;
  u_xlat7.x = dot(x_360, x_361);
  let x_365 : vec3<f32> = vs_TEXCOORD2;
  let x_366 : vec3<f32> = u_xlat6;
  u_xlat7.y = dot(x_365, x_366);
  let x_370 : vec3<f32> = vs_TEXCOORD3;
  let x_371 : vec3<f32> = u_xlat6;
  u_xlat7.z = dot(x_370, x_371);
  let x_374 : vec4<f32> = u_xlat7;
  let x_376 : vec4<f32> = u_xlat7;
  u_xlat26 = dot(vec3<f32>(x_374.x, x_374.y, x_374.z), vec3<f32>(x_376.x, x_376.y, x_376.z));
  let x_379 : f32 = u_xlat26;
  u_xlat26 = inverseSqrt(x_379);
  let x_381 : f32 = u_xlat26;
  let x_383 : vec4<f32> = u_xlat7;
  let x_385 : vec3<f32> = (vec3<f32>(x_381, x_381, x_381) * vec3<f32>(x_383.x, x_383.y, x_383.z));
  let x_386 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_385.x, x_386.y, x_385.y, x_385.z);
  let x_388 : f32 = u_xlat25;
  let x_392 : vec4<f32> = x_18.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_388, x_388, x_388) * vec3<f32>(x_392.x, x_392.y, x_392.z));
  let x_395 : vec4<f32> = u_xlat3;
  let x_398 : vec4<f32> = x_18.x_Color;
  let x_403 : vec3<f32> = ((vec3<f32>(x_395.x, x_395.y, x_395.z) * vec3<f32>(x_398.x, x_398.y, x_398.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_404 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_403.x, x_403.y, x_403.z, x_404.w);
  let x_406 : f32 = u_xlat27;
  let x_408 : vec4<f32> = u_xlat3;
  let x_413 : vec3<f32> = ((vec3<f32>(x_406, x_406, x_406) * vec3<f32>(x_408.x, x_408.y, x_408.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_414 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_413.x, x_413.y, x_413.z, x_414.w);
  let x_416 : f32 = u_xlat27;
  u_xlat25 = ((-(x_416) * 0.959999979f) + 0.959999979f);
  let x_421 : f32 = u_xlat25;
  let x_423 : vec4<f32> = u_xlat4;
  let x_425 : vec3<f32> = (vec3<f32>(x_421, x_421, x_421) * vec3<f32>(x_423.x, x_423.y, x_423.z));
  let x_426 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_425.x, x_425.y, x_425.z, x_426.w);
  let x_429 : f32 = u_xlat5.y;
  let x_433 : f32 = x_18.x_Glossiness;
  u_xlat25 = ((-(x_429) * x_433) + 1.0f);
  let x_436 : vec3<f32> = u_xlat0;
  let x_437 : f32 = u_xlat24;
  let x_440 : vec3<f32> = u_xlat2;
  u_xlat0 = ((x_436 * vec3<f32>(x_437, x_437, x_437)) + x_440);
  let x_442 : vec3<f32> = u_xlat0;
  let x_443 : vec3<f32> = u_xlat0;
  u_xlat24 = dot(x_442, x_443);
  let x_445 : f32 = u_xlat24;
  u_xlat24 = max(x_445, 0.001f);
  let x_448 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_448);
  let x_450 : f32 = u_xlat24;
  let x_452 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_450, x_450, x_450) * x_452);
  let x_454 : vec4<f32> = u_xlat5;
  let x_456 : vec3<f32> = u_xlat2;
  u_xlat24 = dot(vec3<f32>(x_454.x, x_454.z, x_454.w), x_456);
  let x_458 : vec4<f32> = u_xlat5;
  let x_460 : vec3<f32> = u_xlat1;
  u_xlat2.x = dot(vec3<f32>(x_458.x, x_458.z, x_458.w), x_460);
  let x_464 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_464, 0.0f, 1.0f);
  let x_468 : vec4<f32> = u_xlat5;
  let x_470 : vec3<f32> = u_xlat0;
  u_xlat10 = dot(vec3<f32>(x_468.x, x_468.z, x_468.w), x_470);
  let x_472 : f32 = u_xlat10;
  u_xlat10 = clamp(x_472, 0.0f, 1.0f);
  let x_474 : vec3<f32> = u_xlat1;
  let x_475 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_474, x_475);
  let x_479 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_479, 0.0f, 1.0f);
  let x_484 : f32 = u_xlat0.x;
  let x_486 : f32 = u_xlat0.x;
  u_xlat8.x = (x_484 * x_486);
  let x_489 : vec3<f32> = u_xlat8;
  let x_491 : f32 = u_xlat25;
  u_xlat8.x = dot(vec2<f32>(x_489.x, x_489.x), vec2<f32>(x_491, x_491));
  let x_496 : f32 = u_xlat8.x;
  u_xlat8.x = (x_496 + -0.5f);
  let x_502 : f32 = u_xlat2.x;
  u_xlat16 = (-(x_502) + 1.0f);
  let x_505 : f32 = u_xlat16;
  let x_506 : f32 = u_xlat16;
  u_xlat1.x = (x_505 * x_506);
  let x_510 : f32 = u_xlat1.x;
  let x_512 : f32 = u_xlat1.x;
  u_xlat1.x = (x_510 * x_512);
  let x_515 : f32 = u_xlat16;
  let x_517 : f32 = u_xlat1.x;
  u_xlat16 = (x_515 * x_517);
  let x_520 : f32 = u_xlat8.x;
  let x_521 : f32 = u_xlat16;
  u_xlat16 = ((x_520 * x_521) + 1.0f);
  let x_524 : f32 = u_xlat24;
  u_xlat1.x = (-(abs(x_524)) + 1.0f);
  let x_531 : f32 = u_xlat1.x;
  let x_533 : f32 = u_xlat1.x;
  u_xlat9 = (x_531 * x_533);
  let x_535 : f32 = u_xlat9;
  let x_536 : f32 = u_xlat9;
  u_xlat9 = (x_535 * x_536);
  let x_539 : f32 = u_xlat1.x;
  let x_540 : f32 = u_xlat9;
  u_xlat1.x = (x_539 * x_540);
  let x_544 : f32 = u_xlat8.x;
  let x_546 : f32 = u_xlat1.x;
  u_xlat8.x = ((x_544 * x_546) + 1.0f);
  let x_551 : f32 = u_xlat8.x;
  let x_552 : f32 = u_xlat16;
  u_xlat8.x = (x_551 * x_552);
  let x_555 : f32 = u_xlat25;
  let x_556 : f32 = u_xlat25;
  u_xlat16 = (x_555 * x_556);
  let x_558 : f32 = u_xlat16;
  u_xlat16 = max(x_558, 0.002f);
  let x_561 : f32 = u_xlat16;
  u_xlat1.x = (-(x_561) + 1.0f);
  let x_565 : f32 = u_xlat24;
  let x_568 : f32 = u_xlat1.x;
  let x_570 : f32 = u_xlat16;
  u_xlat9 = ((abs(x_565) * x_568) + x_570);
  let x_573 : f32 = u_xlat2.x;
  let x_575 : f32 = u_xlat1.x;
  let x_577 : f32 = u_xlat16;
  u_xlat1.x = ((x_573 * x_575) + x_577);
  let x_580 : f32 = u_xlat24;
  let x_583 : f32 = u_xlat1.x;
  u_xlat24 = (abs(x_580) * x_583);
  let x_586 : f32 = u_xlat2.x;
  let x_587 : f32 = u_xlat9;
  let x_589 : f32 = u_xlat24;
  u_xlat24 = ((x_586 * x_587) + x_589);
  let x_591 : f32 = u_xlat24;
  u_xlat24 = (x_591 + 0.00001f);
  let x_594 : f32 = u_xlat24;
  u_xlat24 = (0.5f / x_594);
  let x_596 : f32 = u_xlat16;
  let x_597 : f32 = u_xlat16;
  u_xlat16 = (x_596 * x_597);
  let x_599 : f32 = u_xlat10;
  let x_600 : f32 = u_xlat16;
  let x_602 : f32 = u_xlat10;
  u_xlat1.x = ((x_599 * x_600) + -(x_602));
  let x_607 : f32 = u_xlat1.x;
  let x_608 : f32 = u_xlat10;
  u_xlat1.x = ((x_607 * x_608) + 1.0f);
  let x_612 : f32 = u_xlat16;
  u_xlat16 = (x_612 * 0.318309873f);
  let x_616 : f32 = u_xlat1.x;
  let x_618 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_616 * x_618) + 0.0000001f);
  let x_623 : f32 = u_xlat16;
  let x_625 : f32 = u_xlat1.x;
  u_xlat16 = (x_623 / x_625);
  let x_627 : f32 = u_xlat16;
  let x_628 : f32 = u_xlat24;
  u_xlat8.y = (x_627 * x_628);
  let x_631 : vec3<f32> = u_xlat2;
  let x_633 : vec3<f32> = u_xlat8;
  let x_635 : vec2<f32> = (vec2<f32>(x_631.x, x_631.x) * vec2<f32>(x_633.x, x_633.y));
  let x_636 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_635.x, x_635.y, x_636.z);
  let x_639 : f32 = u_xlat8.y;
  u_xlat16 = (x_639 * 3.141592741f);
  let x_642 : f32 = u_xlat16;
  u_xlat16 = max(x_642, 0.0f);
  let x_644 : vec4<f32> = u_xlat3;
  let x_646 : vec4<f32> = u_xlat3;
  u_xlat24 = dot(vec3<f32>(x_644.x, x_644.y, x_644.z), vec3<f32>(x_646.x, x_646.y, x_646.z));
  let x_650 : f32 = u_xlat24;
  u_xlatb24 = !((x_650 == 0.0f));
  let x_652 : bool = u_xlatb24;
  u_xlat24 = select(0.0f, 1.0f, x_652);
  let x_654 : f32 = u_xlat24;
  let x_655 : f32 = u_xlat16;
  u_xlat16 = (x_654 * x_655);
  let x_657 : vec3<f32> = u_xlat8;
  let x_659 : vec3<f32> = u_xlat6;
  u_xlat1 = (vec3<f32>(x_657.x, x_657.x, x_657.x) * x_659);
  let x_661 : vec3<f32> = u_xlat6;
  let x_662 : f32 = u_xlat16;
  u_xlat8 = (x_661 * vec3<f32>(x_662, x_662, x_662));
  let x_666 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_666) + 1.0f);
  let x_671 : f32 = u_xlat0.x;
  let x_673 : f32 = u_xlat0.x;
  u_xlat25 = (x_671 * x_673);
  let x_675 : f32 = u_xlat25;
  let x_676 : f32 = u_xlat25;
  u_xlat25 = (x_675 * x_676);
  let x_679 : f32 = u_xlat0.x;
  let x_680 : f32 = u_xlat25;
  u_xlat0.x = (x_679 * x_680);
  let x_683 : vec4<f32> = u_xlat3;
  u_xlat2 = (-(vec3<f32>(x_683.x, x_683.y, x_683.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_688 : vec3<f32> = u_xlat2;
  let x_689 : vec3<f32> = u_xlat0;
  let x_692 : vec4<f32> = u_xlat3;
  u_xlat2 = ((x_688 * vec3<f32>(x_689.x, x_689.x, x_689.x)) + vec3<f32>(x_692.x, x_692.y, x_692.z));
  let x_695 : vec3<f32> = u_xlat8;
  let x_696 : vec3<f32> = u_xlat2;
  u_xlat0 = (x_695 * x_696);
  let x_700 : vec4<f32> = u_xlat4;
  let x_702 : vec3<f32> = u_xlat1;
  let x_704 : vec3<f32> = u_xlat0;
  let x_705 : vec3<f32> = ((vec3<f32>(x_700.x, x_700.y, x_700.z) * x_702) + x_704);
  let x_706 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_705.x, x_705.y, x_705.z, x_706.w);
  let x_709 : f32 = u_xlat4.w;
  SV_Target0.w = x_709;
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

