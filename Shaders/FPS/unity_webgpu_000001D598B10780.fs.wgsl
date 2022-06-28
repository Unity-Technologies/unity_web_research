struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
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
  x_Glossiness : f32,
  x_Metallic : f32,
  x_Cutoff : f32,
  x_EdgeSize : f32,
  x_NoiseStrength : f32,
  @size(12)
  padding_3 : u32,
  x_Color : vec4<f32>,
  x_EdgeColor1 : vec4<f32>,
  x_Emission : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_39 : PGlobals;

var<private> u_xlat51 : f32;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat52 : f32;

@group(0) @binding(1) var x_Noise : texture_2d<f32>;

@group(0) @binding(13) var sampler_Noise : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(2) var x_MetallicSmooth : texture_2d<f32>;

@group(0) @binding(16) var sampler_MetallicSmooth : sampler;

var<private> u_xlat53 : f32;

@group(0) @binding(3) var x_Gradient : texture_2d<f32>;

@group(0) @binding(14) var sampler_Gradient : sampler;

var<private> u_xlat37 : f32;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(4) var x_MainTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainTex : sampler;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat54 : f32;

@group(0) @binding(5) var x_AO : texture_2d<f32>;

@group(0) @binding(17) var sampler_AO : sampler;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(6) var x_Normal : texture_2d<f32>;

@group(0) @binding(15) var sampler_Normal : sampler;

var<private> u_xlatb52 : bool;

var<private> u_xlatb53 : bool;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(9) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(11) var samplerunity_ProbeVolumeSH : sampler;

var<private> u_xlat55 : f32;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlatb14 : vec3<bool>;

@group(0) @binding(7) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatb55 : bool;

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlat15 : vec3<f32>;

var<private> u_xlatb16 : vec3<bool>;

@group(0) @binding(8) var unity_SpecCube1 : texture_cube<f32>;

var<private> u_xlat19 : f32;

var<private> u_xlat18 : f32;

var<private> u_xlat35 : f32;

var<private> u_xlat36 : f32;

var<private> u_xlatb2 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_317 : vec3<f32>;
  var x_499 : vec3<f32>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_686 : f32;
  var x_698 : f32;
  var x_710 : f32;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_866 : f32;
  var x_878 : f32;
  var x_890 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_16 : f32 = vs_TEXCOORD1.w;
  u_xlat0.x = x_16;
  let x_22 : f32 = vs_TEXCOORD2.w;
  u_xlat0.y = x_22;
  let x_27 : f32 = vs_TEXCOORD3.w;
  u_xlat0.z = x_27;
  let x_33 : vec4<f32> = u_xlat0;
  let x_44 : vec3<f32> = x_39.x_WorldSpaceCameraPos;
  u_xlat1 = (-(vec3<f32>(x_33.x, x_33.y, x_33.z)) + x_44);
  let x_47 : vec3<f32> = u_xlat1;
  let x_48 : vec3<f32> = u_xlat1;
  u_xlat51 = dot(x_47, x_48);
  let x_50 : f32 = u_xlat51;
  u_xlat51 = inverseSqrt(x_50);
  let x_53 : f32 = u_xlat51;
  let x_55 : vec3<f32> = u_xlat1;
  let x_56 : vec3<f32> = (vec3<f32>(x_53, x_53, x_53) * x_55);
  let x_57 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_56.x, x_56.y, x_56.z, x_57.w);
  let x_72 : vec4<f32> = vs_TEXCOORD0;
  let x_74 : vec4<f32> = textureSample(x_Noise, sampler_Noise, vec2<f32>(x_72.x, x_72.y));
  u_xlat52 = x_74.x;
  let x_82 : vec4<f32> = vs_TEXCOORD0;
  let x_84 : vec4<f32> = textureSample(x_MetallicSmooth, sampler_MetallicSmooth, vec2<f32>(x_82.z, x_82.w));
  let x_85 : vec2<f32> = vec2<f32>(x_84.x, x_84.w);
  let x_86 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_85.x, x_85.y, x_86.z);
  let x_94 : vec4<f32> = vs_TEXCOORD0;
  let x_96 : vec4<f32> = textureSample(x_Gradient, sampler_Gradient, vec2<f32>(x_94.z, x_94.w));
  u_xlat53 = x_96.x;
  let x_99 : f32 = u_xlat53;
  u_xlat37 = (-(x_99) + 1.0f);
  let x_103 : f32 = u_xlat52;
  let x_104 : f32 = u_xlat37;
  u_xlat52 = (x_103 * x_104);
  let x_106 : f32 = u_xlat52;
  let x_110 : f32 = x_39.x_NoiseStrength;
  let x_112 : f32 = u_xlat53;
  u_xlat52 = ((x_106 * x_110) + x_112);
  let x_114 : f32 = u_xlat52;
  u_xlat52 = (-(x_114) + 1.0f);
  let x_117 : f32 = u_xlat52;
  let x_120 : f32 = x_39.x_Cutoff;
  u_xlat52 = (x_117 + -(x_120));
  let x_125 : f32 = x_39.x_EdgeSize;
  u_xlat53 = (1.0f / -(x_125));
  let x_128 : f32 = u_xlat52;
  let x_129 : f32 = u_xlat53;
  u_xlat52 = (x_128 * x_129);
  let x_131 : f32 = u_xlat52;
  u_xlat52 = clamp(x_131, 0.0f, 1.0f);
  let x_134 : f32 = u_xlat52;
  u_xlat53 = ((x_134 * -2.0f) + 3.0f);
  let x_139 : f32 = u_xlat52;
  let x_140 : f32 = u_xlat52;
  u_xlat52 = (x_139 * x_140);
  let x_142 : f32 = u_xlat52;
  let x_143 : f32 = u_xlat53;
  u_xlat37 = (x_142 * x_143);
  let x_151 : vec4<f32> = vs_TEXCOORD0;
  let x_153 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_151.z, x_151.w));
  u_xlat4 = x_153;
  let x_155 : vec4<f32> = u_xlat4;
  let x_160 : vec4<f32> = x_39.x_Color;
  u_xlat5 = (vec3<f32>(x_155.x, x_155.y, x_155.z) * vec3<f32>(x_160.x, x_160.y, x_160.z));
  let x_169 : vec4<f32> = vs_TEXCOORD0;
  let x_171 : vec4<f32> = textureSample(x_AO, sampler_AO, vec2<f32>(x_169.z, x_169.w));
  u_xlat54 = x_171.x;
  let x_174 : f32 = u_xlat37;
  let x_178 : vec4<f32> = x_39.x_EdgeColor1;
  u_xlat6 = (vec3<f32>(x_174, x_174, x_174) * vec3<f32>(x_178.x, x_178.y, x_178.z));
  let x_181 : vec4<f32> = u_xlat4;
  let x_185 : vec4<f32> = x_39.x_Emission;
  let x_188 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_181.w, x_181.w, x_181.w) * vec3<f32>(x_185.x, x_185.y, x_185.z)) + x_188);
  let x_196 : vec4<f32> = vs_TEXCOORD0;
  let x_198 : vec4<f32> = textureSample(x_Normal, sampler_Normal, vec2<f32>(x_196.z, x_196.w));
  let x_199 : vec3<f32> = vec3<f32>(x_198.x, x_198.y, x_198.w);
  let x_200 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_199.x, x_199.y, x_199.z, x_200.w);
  let x_203 : f32 = u_xlat7.z;
  let x_205 : f32 = u_xlat7.x;
  u_xlat7.x = (x_203 * x_205);
  let x_208 : vec4<f32> = u_xlat7;
  let x_215 : vec2<f32> = ((vec2<f32>(x_208.x, x_208.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_216 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_215.x, x_215.y, x_216.z, x_216.w);
  let x_218 : vec4<f32> = u_xlat7;
  let x_220 : vec4<f32> = u_xlat7;
  u_xlat37 = dot(vec2<f32>(x_218.x, x_218.y), vec2<f32>(x_220.x, x_220.y));
  let x_223 : f32 = u_xlat37;
  u_xlat37 = min(x_223, 1.0f);
  let x_225 : f32 = u_xlat37;
  u_xlat37 = (-(x_225) + 1.0f);
  let x_228 : f32 = u_xlat37;
  u_xlat7.z = sqrt(x_228);
  let x_232 : f32 = u_xlat3.x;
  let x_235 : f32 = x_39.x_Metallic;
  u_xlat3.x = (x_232 * x_235);
  let x_238 : f32 = u_xlat53;
  let x_240 : f32 = u_xlat52;
  let x_243 : f32 = x_39.x_Cutoff;
  u_xlat52 = ((-(x_238) * x_240) + -(x_243));
  let x_246 : f32 = u_xlat52;
  u_xlat52 = (x_246 + 1.0f);
  let x_251 : f32 = u_xlat52;
  u_xlatb52 = (x_251 < 0.0f);
  let x_253 : bool = u_xlatb52;
  if (((select(0i, 1i, x_253) * -1i) != 0i)) {
    discard;
  }
  let x_264 : f32 = x_39.unity_ProbeVolumeParams.x;
  u_xlatb52 = (x_264 == 1.0f);
  let x_266 : bool = u_xlatb52;
  if (x_266) {
    let x_271 : f32 = x_39.unity_ProbeVolumeParams.y;
    u_xlatb53 = (x_271 == 1.0f);
    let x_274 : vec4<f32> = vs_TEXCOORD2;
    let x_278 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[1i];
    let x_280 : vec3<f32> = (vec3<f32>(x_274.w, x_274.w, x_274.w) * vec3<f32>(x_278.x, x_278.y, x_278.z));
    let x_281 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_280.x, x_280.y, x_280.z, x_281.w);
    let x_284 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[0i];
    let x_286 : vec4<f32> = vs_TEXCOORD1;
    let x_289 : vec4<f32> = u_xlat8;
    let x_291 : vec3<f32> = ((vec3<f32>(x_284.x, x_284.y, x_284.z) * vec3<f32>(x_286.w, x_286.w, x_286.w)) + vec3<f32>(x_289.x, x_289.y, x_289.z));
    let x_292 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_291.x, x_291.y, x_291.z, x_292.w);
    let x_296 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[2i];
    let x_298 : vec4<f32> = vs_TEXCOORD3;
    let x_301 : vec4<f32> = u_xlat8;
    let x_303 : vec3<f32> = ((vec3<f32>(x_296.x, x_296.y, x_296.z) * vec3<f32>(x_298.w, x_298.w, x_298.w)) + vec3<f32>(x_301.x, x_301.y, x_301.z));
    let x_304 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_303.x, x_303.y, x_303.z, x_304.w);
    let x_306 : vec4<f32> = u_xlat8;
    let x_310 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[3i];
    let x_312 : vec3<f32> = (vec3<f32>(x_306.x, x_306.y, x_306.z) + vec3<f32>(x_310.x, x_310.y, x_310.z));
    let x_313 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_312.x, x_312.y, x_312.z, x_313.w);
    let x_315 : bool = u_xlatb53;
    if (x_315) {
      let x_320 : vec4<f32> = u_xlat8;
      x_317 = vec3<f32>(x_320.x, x_320.y, x_320.z);
    } else {
      let x_323 : vec4<f32> = u_xlat0;
      x_317 = vec3<f32>(x_323.x, x_323.y, x_323.z);
    }
    let x_325 : vec3<f32> = x_317;
    let x_326 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_325.x, x_325.y, x_325.z, x_326.w);
    let x_328 : vec4<f32> = u_xlat8;
    let x_332 : vec3<f32> = x_39.unity_ProbeVolumeMin;
    let x_334 : vec3<f32> = (vec3<f32>(x_328.x, x_328.y, x_328.z) + -(x_332));
    let x_335 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
    let x_337 : vec4<f32> = u_xlat8;
    let x_341 : vec3<f32> = x_39.unity_ProbeVolumeSizeInv;
    let x_342 : vec3<f32> = (vec3<f32>(x_337.x, x_337.y, x_337.z) * x_341);
    let x_343 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_343.x, x_342.x, x_342.y, x_342.z);
    let x_346 : f32 = u_xlat8.y;
    u_xlat53 = ((x_346 * 0.25f) + 0.75f);
    let x_352 : f32 = x_39.unity_ProbeVolumeParams.z;
    u_xlat37 = ((x_352 * 0.5f) + 0.75f);
    let x_356 : f32 = u_xlat53;
    let x_357 : f32 = u_xlat37;
    u_xlat8.x = max(x_356, x_357);
    let x_368 : vec4<f32> = u_xlat8;
    let x_370 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_368.x, x_368.z, x_368.w));
    u_xlat8 = x_370;
  } else {
    u_xlat8.x = 1.0f;
    u_xlat8.y = 1.0f;
    u_xlat8.z = 1.0f;
    u_xlat8.w = 1.0f;
  }
  let x_376 : vec4<f32> = u_xlat8;
  let x_379 : vec4<f32> = x_39.unity_OcclusionMaskSelector;
  u_xlat53 = dot(x_376, x_379);
  let x_381 : f32 = u_xlat53;
  u_xlat53 = clamp(x_381, 0.0f, 1.0f);
  let x_383 : vec4<f32> = vs_TEXCOORD1;
  let x_385 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(vec3<f32>(x_383.x, x_383.y, x_383.z), vec3<f32>(x_385.x, x_385.y, x_385.z));
  let x_389 : vec4<f32> = vs_TEXCOORD2;
  let x_391 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(vec3<f32>(x_389.x, x_389.y, x_389.z), vec3<f32>(x_391.x, x_391.y, x_391.z));
  let x_395 : vec4<f32> = vs_TEXCOORD3;
  let x_397 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(vec3<f32>(x_395.x, x_395.y, x_395.z), vec3<f32>(x_397.x, x_397.y, x_397.z));
  let x_401 : vec4<f32> = u_xlat8;
  let x_403 : vec4<f32> = u_xlat8;
  u_xlat37 = dot(vec3<f32>(x_401.x, x_401.y, x_401.z), vec3<f32>(x_403.x, x_403.y, x_403.z));
  let x_406 : f32 = u_xlat37;
  u_xlat37 = inverseSqrt(x_406);
  let x_408 : f32 = u_xlat37;
  let x_410 : vec4<f32> = u_xlat8;
  let x_412 : vec3<f32> = (vec3<f32>(x_408, x_408, x_408) * vec3<f32>(x_410.x, x_410.y, x_410.z));
  let x_413 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_412.x, x_412.y, x_412.z, x_413.w);
  let x_416 : f32 = u_xlat3.y;
  let x_420 : f32 = x_39.x_Glossiness;
  u_xlat37 = ((-(x_416) * x_420) + 1.0f);
  let x_424 : vec4<f32> = u_xlat2;
  let x_427 : vec4<f32> = u_xlat7;
  u_xlat55 = dot(-(vec3<f32>(x_424.x, x_424.y, x_424.z)), vec3<f32>(x_427.x, x_427.y, x_427.z));
  let x_430 : f32 = u_xlat55;
  let x_431 : f32 = u_xlat55;
  u_xlat55 = (x_430 + x_431);
  let x_433 : vec4<f32> = u_xlat7;
  let x_435 : f32 = u_xlat55;
  let x_439 : vec4<f32> = u_xlat2;
  let x_442 : vec3<f32> = ((vec3<f32>(x_433.x, x_433.y, x_433.z) * -(vec3<f32>(x_435, x_435, x_435))) + -(vec3<f32>(x_439.x, x_439.y, x_439.z)));
  let x_443 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_442.x, x_442.y, x_442.z, x_443.w);
  let x_446 : f32 = u_xlat53;
  let x_450 : vec4<f32> = x_39.x_LightColor0;
  u_xlat9 = (vec3<f32>(x_446, x_446, x_446) * vec3<f32>(x_450.x, x_450.y, x_450.z));
  let x_453 : bool = u_xlatb52;
  if (x_453) {
    let x_457 : f32 = x_39.unity_ProbeVolumeParams.y;
    u_xlatb52 = (x_457 == 1.0f);
    let x_460 : vec4<f32> = vs_TEXCOORD2;
    let x_463 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[1i];
    let x_465 : vec3<f32> = (vec3<f32>(x_460.w, x_460.w, x_460.w) * vec3<f32>(x_463.x, x_463.y, x_463.z));
    let x_466 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_465.x, x_465.y, x_465.z, x_466.w);
    let x_469 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[0i];
    let x_471 : vec4<f32> = vs_TEXCOORD1;
    let x_474 : vec4<f32> = u_xlat10;
    let x_476 : vec3<f32> = ((vec3<f32>(x_469.x, x_469.y, x_469.z) * vec3<f32>(x_471.w, x_471.w, x_471.w)) + vec3<f32>(x_474.x, x_474.y, x_474.z));
    let x_477 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_476.x, x_476.y, x_476.z, x_477.w);
    let x_480 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[2i];
    let x_482 : vec4<f32> = vs_TEXCOORD3;
    let x_485 : vec4<f32> = u_xlat10;
    let x_487 : vec3<f32> = ((vec3<f32>(x_480.x, x_480.y, x_480.z) * vec3<f32>(x_482.w, x_482.w, x_482.w)) + vec3<f32>(x_485.x, x_485.y, x_485.z));
    let x_488 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_487.x, x_487.y, x_487.z, x_488.w);
    let x_490 : vec4<f32> = u_xlat10;
    let x_493 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[3i];
    let x_495 : vec3<f32> = (vec3<f32>(x_490.x, x_490.y, x_490.z) + vec3<f32>(x_493.x, x_493.y, x_493.z));
    let x_496 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_495.x, x_495.y, x_495.z, x_496.w);
    let x_498 : bool = u_xlatb52;
    if (x_498) {
      let x_502 : vec4<f32> = u_xlat10;
      x_499 = vec3<f32>(x_502.x, x_502.y, x_502.z);
    } else {
      let x_505 : vec4<f32> = u_xlat0;
      x_499 = vec3<f32>(x_505.x, x_505.y, x_505.z);
    }
    let x_507 : vec3<f32> = x_499;
    let x_508 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_507.x, x_507.y, x_507.z, x_508.w);
    let x_510 : vec4<f32> = u_xlat10;
    let x_513 : vec3<f32> = x_39.unity_ProbeVolumeMin;
    let x_515 : vec3<f32> = (vec3<f32>(x_510.x, x_510.y, x_510.z) + -(x_513));
    let x_516 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_515.x, x_515.y, x_515.z, x_516.w);
    let x_518 : vec4<f32> = u_xlat10;
    let x_521 : vec3<f32> = x_39.unity_ProbeVolumeSizeInv;
    let x_522 : vec3<f32> = (vec3<f32>(x_518.x, x_518.y, x_518.z) * x_521);
    let x_523 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_523.x, x_522.x, x_522.y, x_522.z);
    let x_526 : f32 = u_xlat10.y;
    u_xlat52 = (x_526 * 0.25f);
    let x_529 : f32 = x_39.unity_ProbeVolumeParams.z;
    u_xlat53 = (x_529 * 0.5f);
    let x_532 : f32 = x_39.unity_ProbeVolumeParams.z;
    u_xlat55 = ((-(x_532) * 0.5f) + 0.25f);
    let x_536 : f32 = u_xlat52;
    let x_537 : f32 = u_xlat53;
    u_xlat52 = max(x_536, x_537);
    let x_539 : f32 = u_xlat55;
    let x_540 : f32 = u_xlat52;
    u_xlat10.x = min(x_539, x_540);
    let x_547 : vec4<f32> = u_xlat10;
    let x_549 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_547.x, x_547.z, x_547.w));
    u_xlat11 = x_549;
    let x_551 : vec4<f32> = u_xlat10;
    let x_554 : vec3<f32> = (vec3<f32>(x_551.x, x_551.z, x_551.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_555 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_554.x, x_554.y, x_554.z, x_555.w);
    let x_560 : vec4<f32> = u_xlat12;
    let x_562 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_560.x, x_560.y, x_560.z));
    u_xlat12 = x_562;
    let x_563 : vec4<f32> = u_xlat10;
    let x_566 : vec3<f32> = (vec3<f32>(x_563.x, x_563.z, x_563.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_567 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_566.x, x_566.y, x_566.z, x_567.w);
    let x_572 : vec4<f32> = u_xlat10;
    let x_574 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_572.x, x_572.y, x_572.z));
    u_xlat10 = x_574;
    u_xlat7.w = 1.0f;
    let x_576 : vec4<f32> = u_xlat11;
    let x_577 : vec4<f32> = u_xlat7;
    u_xlat11.x = dot(x_576, x_577);
    let x_580 : vec4<f32> = u_xlat12;
    let x_581 : vec4<f32> = u_xlat7;
    u_xlat11.y = dot(x_580, x_581);
    let x_584 : vec4<f32> = u_xlat10;
    let x_585 : vec4<f32> = u_xlat7;
    u_xlat11.z = dot(x_584, x_585);
  } else {
    u_xlat7.w = 1.0f;
    let x_591 : vec4<f32> = x_39.unity_SHAr;
    let x_592 : vec4<f32> = u_xlat7;
    u_xlat11.x = dot(x_591, x_592);
    let x_596 : vec4<f32> = x_39.unity_SHAg;
    let x_597 : vec4<f32> = u_xlat7;
    u_xlat11.y = dot(x_596, x_597);
    let x_602 : vec4<f32> = x_39.unity_SHAb;
    let x_603 : vec4<f32> = u_xlat7;
    u_xlat11.z = dot(x_602, x_603);
  }
  let x_606 : vec4<f32> = u_xlat11;
  let x_610 : vec3<f32> = vs_TEXCOORD4;
  let x_611 : vec3<f32> = (vec3<f32>(x_606.x, x_606.y, x_606.z) + x_610);
  let x_612 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_611.x, x_611.y, x_611.z, x_612.w);
  let x_614 : vec4<f32> = u_xlat10;
  let x_617 : vec3<f32> = max(vec3<f32>(x_614.x, x_614.y, x_614.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_618 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_617.x, x_617.y, x_617.z, x_618.w);
  let x_622 : f32 = x_39.unity_SpecCube0_ProbePosition.w;
  u_xlatb52 = (0.0f < x_622);
  let x_624 : bool = u_xlatb52;
  if (x_624) {
    let x_627 : vec4<f32> = u_xlat8;
    let x_629 : vec4<f32> = u_xlat8;
    u_xlat52 = dot(vec3<f32>(x_627.x, x_627.y, x_627.z), vec3<f32>(x_629.x, x_629.y, x_629.z));
    let x_632 : f32 = u_xlat52;
    u_xlat52 = inverseSqrt(x_632);
    let x_634 : f32 = u_xlat52;
    let x_636 : vec4<f32> = u_xlat8;
    let x_638 : vec3<f32> = (vec3<f32>(x_634, x_634, x_634) * vec3<f32>(x_636.x, x_636.y, x_636.z));
    let x_639 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_638.x, x_638.y, x_638.z, x_639.w);
    let x_641 : vec4<f32> = u_xlat0;
    let x_646 : vec4<f32> = x_39.unity_SpecCube0_BoxMax;
    let x_648 : vec3<f32> = (-(vec3<f32>(x_641.x, x_641.y, x_641.z)) + vec3<f32>(x_646.x, x_646.y, x_646.z));
    let x_649 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_648.x, x_648.y, x_648.z, x_649.w);
    let x_651 : vec4<f32> = u_xlat12;
    let x_653 : vec4<f32> = u_xlat11;
    let x_655 : vec3<f32> = (vec3<f32>(x_651.x, x_651.y, x_651.z) / vec3<f32>(x_653.x, x_653.y, x_653.z));
    let x_656 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_655.x, x_655.y, x_655.z, x_656.w);
    let x_659 : vec4<f32> = u_xlat0;
    let x_664 : vec4<f32> = x_39.unity_SpecCube0_BoxMin;
    u_xlat13 = (-(vec3<f32>(x_659.x, x_659.y, x_659.z)) + vec3<f32>(x_664.x, x_664.y, x_664.z));
    let x_667 : vec3<f32> = u_xlat13;
    let x_668 : vec4<f32> = u_xlat11;
    u_xlat13 = (x_667 / vec3<f32>(x_668.x, x_668.y, x_668.z));
    let x_675 : vec4<f32> = u_xlat11;
    let x_678 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_675.x, x_675.y, x_675.z, x_675.x));
    u_xlatb14 = vec3<bool>(x_678.x, x_678.y, x_678.z);
    let x_682 : vec4<f32> = u_xlat12;
    hlslcc_movcTemp = x_682;
    let x_684 : bool = u_xlatb14.x;
    if (x_684) {
      let x_690 : f32 = u_xlat12.x;
      x_686 = x_690;
    } else {
      let x_693 : f32 = u_xlat13.x;
      x_686 = x_693;
    }
    let x_694 : f32 = x_686;
    hlslcc_movcTemp.x = x_694;
    let x_697 : bool = u_xlatb14.y;
    if (x_697) {
      let x_702 : f32 = u_xlat12.y;
      x_698 = x_702;
    } else {
      let x_705 : f32 = u_xlat13.y;
      x_698 = x_705;
    }
    let x_706 : f32 = x_698;
    hlslcc_movcTemp.y = x_706;
    let x_709 : bool = u_xlatb14.z;
    if (x_709) {
      let x_714 : f32 = u_xlat12.z;
      x_710 = x_714;
    } else {
      let x_717 : f32 = u_xlat13.z;
      x_710 = x_717;
    }
    let x_718 : f32 = x_710;
    hlslcc_movcTemp.z = x_718;
    let x_720 : vec4<f32> = hlslcc_movcTemp;
    u_xlat12 = x_720;
    let x_722 : f32 = u_xlat12.y;
    let x_724 : f32 = u_xlat12.x;
    u_xlat52 = min(x_722, x_724);
    let x_727 : f32 = u_xlat12.z;
    let x_728 : f32 = u_xlat52;
    u_xlat52 = min(x_727, x_728);
    let x_730 : vec4<f32> = u_xlat0;
    let x_733 : vec4<f32> = x_39.unity_SpecCube0_ProbePosition;
    let x_736 : vec3<f32> = (vec3<f32>(x_730.x, x_730.y, x_730.z) + -(vec3<f32>(x_733.x, x_733.y, x_733.z)));
    let x_737 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_736.x, x_736.y, x_736.z, x_737.w);
    let x_739 : vec4<f32> = u_xlat11;
    let x_741 : f32 = u_xlat52;
    let x_744 : vec4<f32> = u_xlat12;
    let x_746 : vec3<f32> = ((vec3<f32>(x_739.x, x_739.y, x_739.z) * vec3<f32>(x_741, x_741, x_741)) + vec3<f32>(x_744.x, x_744.y, x_744.z));
    let x_747 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_746.x, x_746.y, x_746.z, x_747.w);
  } else {
    let x_750 : vec4<f32> = u_xlat8;
    let x_751 : vec3<f32> = vec3<f32>(x_750.x, x_750.y, x_750.z);
    let x_752 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_751.x, x_751.y, x_751.z, x_752.w);
  }
  let x_754 : f32 = u_xlat37;
  u_xlat52 = ((-(x_754) * 0.699999988f) + 1.700000048f);
  let x_760 : f32 = u_xlat52;
  let x_761 : f32 = u_xlat37;
  u_xlat52 = (x_760 * x_761);
  let x_763 : f32 = u_xlat52;
  u_xlat52 = (x_763 * 6.0f);
  let x_774 : vec4<f32> = u_xlat11;
  let x_776 : f32 = u_xlat52;
  let x_777 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_774.x, x_774.y, x_774.z), x_776);
  u_xlat11 = x_777;
  let x_779 : f32 = u_xlat11.w;
  u_xlat53 = (x_779 + -1.0f);
  let x_783 : f32 = x_39.unity_SpecCube0_HDR.w;
  let x_784 : f32 = u_xlat53;
  u_xlat53 = ((x_783 * x_784) + 1.0f);
  let x_787 : f32 = u_xlat53;
  u_xlat53 = log2(x_787);
  let x_789 : f32 = u_xlat53;
  let x_791 : f32 = x_39.unity_SpecCube0_HDR.y;
  u_xlat53 = (x_789 * x_791);
  let x_793 : f32 = u_xlat53;
  u_xlat53 = exp2(x_793);
  let x_795 : f32 = u_xlat53;
  let x_797 : f32 = x_39.unity_SpecCube0_HDR.x;
  u_xlat53 = (x_795 * x_797);
  let x_799 : vec4<f32> = u_xlat11;
  let x_801 : f32 = u_xlat53;
  let x_803 : vec3<f32> = (vec3<f32>(x_799.x, x_799.y, x_799.z) * vec3<f32>(x_801, x_801, x_801));
  let x_804 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_803.x, x_803.y, x_803.z, x_804.w);
  let x_808 : f32 = x_39.unity_SpecCube0_BoxMin.w;
  u_xlatb55 = (x_808 < 0.999989986f);
  let x_811 : bool = u_xlatb55;
  if (x_811) {
    let x_816 : f32 = x_39.unity_SpecCube1_ProbePosition.w;
    u_xlatb55 = (0.0f < x_816);
    let x_818 : bool = u_xlatb55;
    if (x_818) {
      let x_821 : vec4<f32> = u_xlat8;
      let x_823 : vec4<f32> = u_xlat8;
      u_xlat55 = dot(vec3<f32>(x_821.x, x_821.y, x_821.z), vec3<f32>(x_823.x, x_823.y, x_823.z));
      let x_826 : f32 = u_xlat55;
      u_xlat55 = inverseSqrt(x_826);
      let x_828 : f32 = u_xlat55;
      let x_830 : vec4<f32> = u_xlat8;
      u_xlat13 = (vec3<f32>(x_828, x_828, x_828) * vec3<f32>(x_830.x, x_830.y, x_830.z));
      let x_834 : vec4<f32> = u_xlat0;
      let x_839 : vec4<f32> = x_39.unity_SpecCube1_BoxMax;
      u_xlat14 = (-(vec3<f32>(x_834.x, x_834.y, x_834.z)) + vec3<f32>(x_839.x, x_839.y, x_839.z));
      let x_842 : vec3<f32> = u_xlat14;
      let x_843 : vec3<f32> = u_xlat13;
      u_xlat14 = (x_842 / x_843);
      let x_846 : vec4<f32> = u_xlat0;
      let x_851 : vec4<f32> = x_39.unity_SpecCube1_BoxMin;
      u_xlat15 = (-(vec3<f32>(x_846.x, x_846.y, x_846.z)) + vec3<f32>(x_851.x, x_851.y, x_851.z));
      let x_854 : vec3<f32> = u_xlat15;
      let x_855 : vec3<f32> = u_xlat13;
      u_xlat15 = (x_854 / x_855);
      let x_858 : vec3<f32> = u_xlat13;
      let x_860 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_858.x, x_858.y, x_858.z, x_858.x));
      u_xlatb16 = vec3<bool>(x_860.x, x_860.y, x_860.z);
      let x_863 : vec3<f32> = u_xlat14;
      hlslcc_movcTemp_1 = x_863;
      let x_865 : bool = u_xlatb16.x;
      if (x_865) {
        let x_870 : f32 = u_xlat14.x;
        x_866 = x_870;
      } else {
        let x_873 : f32 = u_xlat15.x;
        x_866 = x_873;
      }
      let x_874 : f32 = x_866;
      hlslcc_movcTemp_1.x = x_874;
      let x_877 : bool = u_xlatb16.y;
      if (x_877) {
        let x_882 : f32 = u_xlat14.y;
        x_878 = x_882;
      } else {
        let x_885 : f32 = u_xlat15.y;
        x_878 = x_885;
      }
      let x_886 : f32 = x_878;
      hlslcc_movcTemp_1.y = x_886;
      let x_889 : bool = u_xlatb16.z;
      if (x_889) {
        let x_894 : f32 = u_xlat14.z;
        x_890 = x_894;
      } else {
        let x_897 : f32 = u_xlat15.z;
        x_890 = x_897;
      }
      let x_898 : f32 = x_890;
      hlslcc_movcTemp_1.z = x_898;
      let x_900 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat14 = x_900;
      let x_902 : f32 = u_xlat14.y;
      let x_904 : f32 = u_xlat14.x;
      u_xlat55 = min(x_902, x_904);
      let x_907 : f32 = u_xlat14.z;
      let x_908 : f32 = u_xlat55;
      u_xlat55 = min(x_907, x_908);
      let x_910 : vec4<f32> = u_xlat0;
      let x_913 : vec4<f32> = x_39.unity_SpecCube1_ProbePosition;
      let x_916 : vec3<f32> = (vec3<f32>(x_910.x, x_910.y, x_910.z) + -(vec3<f32>(x_913.x, x_913.y, x_913.z)));
      let x_917 : vec4<f32> = u_xlat0;
      u_xlat0 = vec4<f32>(x_916.x, x_916.y, x_916.z, x_917.w);
      let x_919 : vec3<f32> = u_xlat13;
      let x_920 : f32 = u_xlat55;
      let x_923 : vec4<f32> = u_xlat0;
      let x_925 : vec3<f32> = ((x_919 * vec3<f32>(x_920, x_920, x_920)) + vec3<f32>(x_923.x, x_923.y, x_923.z));
      let x_926 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_925.x, x_925.y, x_925.z, x_926.w);
    }
    let x_932 : vec4<f32> = u_xlat8;
    let x_934 : f32 = u_xlat52;
    let x_935 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_932.x, x_932.y, x_932.z), x_934);
    u_xlat8 = x_935;
    let x_937 : f32 = u_xlat8.w;
    u_xlat0.x = (x_937 + -1.0f);
    let x_942 : f32 = x_39.unity_SpecCube1_HDR.w;
    let x_944 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_942 * x_944) + 1.0f);
    let x_949 : f32 = u_xlat0.x;
    u_xlat0.x = log2(x_949);
    let x_953 : f32 = u_xlat0.x;
    let x_955 : f32 = x_39.unity_SpecCube1_HDR.y;
    u_xlat0.x = (x_953 * x_955);
    let x_959 : f32 = u_xlat0.x;
    u_xlat0.x = exp2(x_959);
    let x_963 : f32 = u_xlat0.x;
    let x_965 : f32 = x_39.unity_SpecCube1_HDR.x;
    u_xlat0.x = (x_963 * x_965);
    let x_968 : vec4<f32> = u_xlat8;
    let x_970 : vec4<f32> = u_xlat0;
    let x_972 : vec3<f32> = (vec3<f32>(x_968.x, x_968.y, x_968.z) * vec3<f32>(x_970.x, x_970.x, x_970.x));
    let x_973 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_972.x, x_972.y, x_972.z, x_973.w);
    let x_975 : f32 = u_xlat53;
    let x_977 : vec4<f32> = u_xlat11;
    let x_980 : vec4<f32> = u_xlat0;
    let x_983 : vec3<f32> = ((vec3<f32>(x_975, x_975, x_975) * vec3<f32>(x_977.x, x_977.y, x_977.z)) + -(vec3<f32>(x_980.x, x_980.y, x_980.z)));
    let x_984 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_983.x, x_983.y, x_983.z, x_984.w);
    let x_987 : vec4<f32> = x_39.unity_SpecCube0_BoxMin;
    let x_989 : vec4<f32> = u_xlat8;
    let x_992 : vec4<f32> = u_xlat0;
    let x_994 : vec3<f32> = ((vec3<f32>(x_987.w, x_987.w, x_987.w) * vec3<f32>(x_989.x, x_989.y, x_989.z)) + vec3<f32>(x_992.x, x_992.y, x_992.z));
    let x_995 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_994.x, x_994.y, x_994.z, x_995.w);
  }
  let x_997 : f32 = u_xlat54;
  let x_999 : vec4<f32> = u_xlat12;
  let x_1001 : vec3<f32> = (vec3<f32>(x_997, x_997, x_997) * vec3<f32>(x_999.x, x_999.y, x_999.z));
  let x_1002 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1001.x, x_1001.y, x_1001.z, x_1002.w);
  let x_1004 : vec4<f32> = u_xlat4;
  let x_1007 : vec4<f32> = x_39.x_Color;
  let x_1012 : vec3<f32> = ((vec3<f32>(x_1004.x, x_1004.y, x_1004.z) * vec3<f32>(x_1007.x, x_1007.y, x_1007.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_1013 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1012.x, x_1012.y, x_1012.z, x_1013.w);
  let x_1015 : vec3<f32> = u_xlat3;
  let x_1017 : vec4<f32> = u_xlat4;
  let x_1022 : vec3<f32> = ((vec3<f32>(x_1015.x, x_1015.x, x_1015.x) * vec3<f32>(x_1017.x, x_1017.y, x_1017.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_1023 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1022.x, x_1022.y, x_1022.z, x_1023.w);
  let x_1026 : f32 = u_xlat3.x;
  u_xlat52 = ((-(x_1026) * 0.959999979f) + 0.959999979f);
  let x_1031 : f32 = u_xlat52;
  let x_1033 : vec3<f32> = u_xlat5;
  u_xlat5 = (vec3<f32>(x_1031, x_1031, x_1031) * x_1033);
  let x_1035 : vec3<f32> = u_xlat1;
  let x_1036 : f32 = u_xlat51;
  let x_1040 : vec4<f32> = x_39.x_WorldSpaceLightPos0;
  u_xlat1 = ((x_1035 * vec3<f32>(x_1036, x_1036, x_1036)) + vec3<f32>(x_1040.x, x_1040.y, x_1040.z));
  let x_1043 : vec3<f32> = u_xlat1;
  let x_1044 : vec3<f32> = u_xlat1;
  u_xlat51 = dot(x_1043, x_1044);
  let x_1046 : f32 = u_xlat51;
  u_xlat51 = max(x_1046, 0.001f);
  let x_1049 : f32 = u_xlat51;
  u_xlat51 = inverseSqrt(x_1049);
  let x_1051 : f32 = u_xlat51;
  let x_1053 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_1051, x_1051, x_1051) * x_1053);
  let x_1055 : vec4<f32> = u_xlat7;
  let x_1057 : vec4<f32> = u_xlat2;
  u_xlat51 = dot(vec3<f32>(x_1055.x, x_1055.y, x_1055.z), vec3<f32>(x_1057.x, x_1057.y, x_1057.z));
  let x_1060 : vec4<f32> = u_xlat7;
  let x_1063 : vec4<f32> = x_39.x_WorldSpaceLightPos0;
  u_xlat2.x = dot(vec3<f32>(x_1060.x, x_1060.y, x_1060.z), vec3<f32>(x_1063.x, x_1063.y, x_1063.z));
  let x_1068 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1068, 0.0f, 1.0f);
  let x_1072 : vec4<f32> = u_xlat7;
  let x_1074 : vec3<f32> = u_xlat1;
  u_xlat19 = dot(vec3<f32>(x_1072.x, x_1072.y, x_1072.z), x_1074);
  let x_1076 : f32 = u_xlat19;
  u_xlat19 = clamp(x_1076, 0.0f, 1.0f);
  let x_1079 : vec4<f32> = x_39.x_WorldSpaceLightPos0;
  let x_1081 : vec3<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_1079.x, x_1079.y, x_1079.z), x_1081);
  let x_1085 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1085, 0.0f, 1.0f);
  let x_1090 : f32 = u_xlat1.x;
  let x_1092 : f32 = u_xlat1.x;
  u_xlat18 = (x_1090 * x_1092);
  let x_1094 : f32 = u_xlat18;
  let x_1096 : f32 = u_xlat37;
  u_xlat18 = dot(vec2<f32>(x_1094, x_1094), vec2<f32>(x_1096, x_1096));
  let x_1099 : f32 = u_xlat18;
  u_xlat18 = (x_1099 + -0.5f);
  let x_1104 : f32 = u_xlat2.x;
  u_xlat35 = (-(x_1104) + 1.0f);
  let x_1108 : f32 = u_xlat35;
  let x_1109 : f32 = u_xlat35;
  u_xlat36 = (x_1108 * x_1109);
  let x_1111 : f32 = u_xlat36;
  let x_1112 : f32 = u_xlat36;
  u_xlat36 = (x_1111 * x_1112);
  let x_1114 : f32 = u_xlat35;
  let x_1115 : f32 = u_xlat36;
  u_xlat35 = (x_1114 * x_1115);
  let x_1117 : f32 = u_xlat18;
  let x_1118 : f32 = u_xlat35;
  u_xlat35 = ((x_1117 * x_1118) + 1.0f);
  let x_1121 : f32 = u_xlat51;
  u_xlat36 = (-(abs(x_1121)) + 1.0f);
  let x_1125 : f32 = u_xlat36;
  let x_1126 : f32 = u_xlat36;
  u_xlat53 = (x_1125 * x_1126);
  let x_1128 : f32 = u_xlat53;
  let x_1129 : f32 = u_xlat53;
  u_xlat53 = (x_1128 * x_1129);
  let x_1131 : f32 = u_xlat36;
  let x_1132 : f32 = u_xlat53;
  u_xlat36 = (x_1131 * x_1132);
  let x_1134 : f32 = u_xlat18;
  let x_1135 : f32 = u_xlat36;
  u_xlat18 = ((x_1134 * x_1135) + 1.0f);
  let x_1138 : f32 = u_xlat18;
  let x_1139 : f32 = u_xlat35;
  u_xlat18 = (x_1138 * x_1139);
  let x_1142 : f32 = u_xlat2.x;
  let x_1143 : f32 = u_xlat18;
  u_xlat18 = (x_1142 * x_1143);
  let x_1145 : f32 = u_xlat37;
  let x_1146 : f32 = u_xlat37;
  u_xlat35 = (x_1145 * x_1146);
  let x_1148 : f32 = u_xlat35;
  u_xlat35 = max(x_1148, 0.002f);
  let x_1151 : f32 = u_xlat35;
  u_xlat53 = (-(x_1151) + 1.0f);
  let x_1154 : f32 = u_xlat51;
  let x_1156 : f32 = u_xlat53;
  let x_1158 : f32 = u_xlat35;
  u_xlat3.x = ((abs(x_1154) * x_1156) + x_1158);
  let x_1162 : f32 = u_xlat2.x;
  let x_1163 : f32 = u_xlat53;
  let x_1165 : f32 = u_xlat35;
  u_xlat53 = ((x_1162 * x_1163) + x_1165);
  let x_1167 : f32 = u_xlat51;
  let x_1169 : f32 = u_xlat53;
  u_xlat51 = (abs(x_1167) * x_1169);
  let x_1172 : f32 = u_xlat2.x;
  let x_1174 : f32 = u_xlat3.x;
  let x_1176 : f32 = u_xlat51;
  u_xlat51 = ((x_1172 * x_1174) + x_1176);
  let x_1178 : f32 = u_xlat51;
  u_xlat51 = (x_1178 + 0.00001f);
  let x_1181 : f32 = u_xlat51;
  u_xlat51 = (0.5f / x_1181);
  let x_1183 : f32 = u_xlat35;
  let x_1184 : f32 = u_xlat35;
  u_xlat53 = (x_1183 * x_1184);
  let x_1186 : f32 = u_xlat19;
  let x_1187 : f32 = u_xlat53;
  let x_1189 : f32 = u_xlat19;
  u_xlat3.x = ((x_1186 * x_1187) + -(x_1189));
  let x_1194 : f32 = u_xlat3.x;
  let x_1195 : f32 = u_xlat19;
  u_xlat19 = ((x_1194 * x_1195) + 1.0f);
  let x_1198 : f32 = u_xlat53;
  u_xlat53 = (x_1198 * 0.318309873f);
  let x_1201 : f32 = u_xlat19;
  let x_1202 : f32 = u_xlat19;
  u_xlat19 = ((x_1201 * x_1202) + 0.0000001f);
  let x_1206 : f32 = u_xlat53;
  let x_1207 : f32 = u_xlat19;
  u_xlat19 = (x_1206 / x_1207);
  let x_1209 : f32 = u_xlat51;
  let x_1210 : f32 = u_xlat19;
  u_xlat51 = (x_1209 * x_1210);
  let x_1213 : f32 = u_xlat2.x;
  let x_1214 : f32 = u_xlat51;
  u_xlat51 = (x_1213 * x_1214);
  let x_1216 : f32 = u_xlat51;
  u_xlat51 = (x_1216 * 3.141592741f);
  let x_1219 : f32 = u_xlat51;
  u_xlat51 = max(x_1219, 0.0f);
  let x_1221 : f32 = u_xlat35;
  let x_1222 : f32 = u_xlat35;
  u_xlat35 = ((x_1221 * x_1222) + 1.0f);
  let x_1225 : f32 = u_xlat35;
  u_xlat1.z = (1.0f / x_1225);
  let x_1228 : vec4<f32> = u_xlat4;
  let x_1230 : vec4<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_1228.x, x_1228.y, x_1228.z), vec3<f32>(x_1230.x, x_1230.y, x_1230.z));
  let x_1236 : f32 = u_xlat2.x;
  u_xlatb2 = !((x_1236 == 0.0f));
  let x_1238 : bool = u_xlatb2;
  u_xlat2.x = select(0.0f, 1.0f, x_1238);
  let x_1241 : f32 = u_xlat51;
  let x_1243 : f32 = u_xlat2.x;
  u_xlat51 = (x_1241 * x_1243);
  let x_1246 : f32 = u_xlat3.y;
  let x_1248 : f32 = x_39.x_Glossiness;
  let x_1250 : f32 = u_xlat52;
  u_xlat52 = ((x_1246 * x_1248) + -(x_1250));
  let x_1253 : f32 = u_xlat52;
  u_xlat52 = (x_1253 + 1.0f);
  let x_1255 : f32 = u_xlat52;
  u_xlat52 = clamp(x_1255, 0.0f, 1.0f);
  let x_1257 : f32 = u_xlat18;
  let x_1259 : vec3<f32> = u_xlat9;
  let x_1260 : vec3<f32> = (vec3<f32>(x_1257, x_1257, x_1257) * x_1259);
  let x_1261 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1260.x, x_1260.y, x_1261.z, x_1260.z);
  let x_1263 : vec4<f32> = u_xlat10;
  let x_1265 : f32 = u_xlat54;
  let x_1268 : vec4<f32> = u_xlat2;
  let x_1270 : vec3<f32> = ((vec3<f32>(x_1263.x, x_1263.y, x_1263.z) * vec3<f32>(x_1265, x_1265, x_1265)) + vec3<f32>(x_1268.x, x_1268.y, x_1268.w));
  let x_1271 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1270.x, x_1270.y, x_1271.z, x_1270.z);
  let x_1273 : vec3<f32> = u_xlat9;
  let x_1274 : f32 = u_xlat51;
  u_xlat3 = (x_1273 * vec3<f32>(x_1274, x_1274, x_1274));
  let x_1278 : f32 = u_xlat1.x;
  u_xlat0.w = (-(x_1278) + 1.0f);
  let x_1283 : f32 = u_xlat0.w;
  let x_1285 : f32 = u_xlat0.w;
  u_xlat1.x = (x_1283 * x_1285);
  let x_1289 : f32 = u_xlat1.x;
  let x_1291 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1289 * x_1291);
  let x_1294 : vec4<f32> = u_xlat0;
  let x_1295 : vec3<f32> = u_xlat1;
  u_xlat0 = (x_1294 * vec4<f32>(x_1295.z, x_1295.z, x_1295.z, x_1295.x));
  let x_1298 : vec4<f32> = u_xlat4;
  let x_1302 : vec3<f32> = (-(vec3<f32>(x_1298.x, x_1298.y, x_1298.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1303 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1302.x, x_1302.y, x_1302.z, x_1303.w);
  let x_1305 : vec4<f32> = u_xlat7;
  let x_1307 : vec4<f32> = u_xlat0;
  let x_1310 : vec4<f32> = u_xlat4;
  let x_1312 : vec3<f32> = ((vec3<f32>(x_1305.x, x_1305.y, x_1305.z) * vec3<f32>(x_1307.w, x_1307.w, x_1307.w)) + vec3<f32>(x_1310.x, x_1310.y, x_1310.z));
  let x_1313 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1312.x, x_1312.y, x_1312.z, x_1313.w);
  let x_1315 : vec3<f32> = u_xlat3;
  let x_1316 : vec4<f32> = u_xlat7;
  u_xlat3 = (x_1315 * vec3<f32>(x_1316.x, x_1316.y, x_1316.z));
  let x_1319 : vec3<f32> = u_xlat5;
  let x_1320 : vec4<f32> = u_xlat2;
  let x_1323 : vec3<f32> = u_xlat3;
  let x_1324 : vec3<f32> = ((x_1319 * vec3<f32>(x_1320.x, x_1320.y, x_1320.w)) + x_1323);
  let x_1325 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1324.x, x_1324.y, x_1325.z, x_1324.z);
  let x_1327 : vec4<f32> = u_xlat4;
  let x_1330 : f32 = u_xlat52;
  u_xlat1 = (-(vec3<f32>(x_1327.x, x_1327.y, x_1327.z)) + vec3<f32>(x_1330, x_1330, x_1330));
  let x_1333 : f32 = u_xlat36;
  let x_1335 : vec3<f32> = u_xlat1;
  let x_1337 : vec4<f32> = u_xlat4;
  u_xlat1 = ((vec3<f32>(x_1333, x_1333, x_1333) * x_1335) + vec3<f32>(x_1337.x, x_1337.y, x_1337.z));
  let x_1340 : vec4<f32> = u_xlat0;
  let x_1342 : vec3<f32> = u_xlat1;
  let x_1344 : vec4<f32> = u_xlat2;
  let x_1346 : vec3<f32> = ((vec3<f32>(x_1340.x, x_1340.y, x_1340.z) * x_1342) + vec3<f32>(x_1344.x, x_1344.y, x_1344.w));
  let x_1347 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1346.x, x_1346.y, x_1346.z, x_1347.w);
  let x_1351 : vec3<f32> = u_xlat6;
  let x_1352 : vec4<f32> = u_xlat0;
  let x_1354 : vec3<f32> = (x_1351 + vec3<f32>(x_1352.x, x_1352.y, x_1352.z));
  let x_1355 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1354.x, x_1354.y, x_1354.z, x_1355.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

