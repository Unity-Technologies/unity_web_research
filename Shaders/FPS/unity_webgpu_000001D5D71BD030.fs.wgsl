struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
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

@group(0) @binding(15) var sampler_Noise : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(2) var x_MetallicSmooth : texture_2d<f32>;

@group(0) @binding(18) var sampler_MetallicSmooth : sampler;

var<private> u_xlat53 : f32;

@group(0) @binding(3) var x_Gradient : texture_2d<f32>;

@group(0) @binding(16) var sampler_Gradient : sampler;

var<private> u_xlat37 : f32;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(4) var x_MainTex : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainTex : sampler;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat54 : f32;

@group(0) @binding(5) var x_AO : texture_2d<f32>;

@group(0) @binding(19) var sampler_AO : sampler;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(6) var x_Normal : texture_2d<f32>;

@group(0) @binding(17) var sampler_Normal : sampler;

var<private> u_xlatb52 : bool;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlatb53 : bool;

var<private> u_xlatb37 : bool;

var<private> u_xlat55 : f32;

@group(0) @binding(10) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(12) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(7) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_ShadowMapTexture : sampler;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlatb14 : vec3<bool>;

@group(0) @binding(8) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(11) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatb55 : bool;

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlat15 : vec3<f32>;

var<private> u_xlatb16 : vec3<bool>;

@group(0) @binding(9) var unity_SpecCube1 : texture_cube<f32>;

var<private> u_xlat19 : f32;

var<private> u_xlat18 : f32;

var<private> u_xlat35 : f32;

var<private> u_xlat36 : f32;

var<private> u_xlatb2 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_369 : vec3<f32>;
  var x_577 : vec3<f32>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_764 : f32;
  var x_776 : f32;
  var x_788 : f32;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_944 : f32;
  var x_956 : f32;
  var x_968 : f32;
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
  let x_265 : f32 = x_39.unity_MatrixV[0i].z;
  u_xlat8.x = x_265;
  let x_268 : f32 = x_39.unity_MatrixV[1i].z;
  u_xlat8.y = x_268;
  let x_272 : f32 = x_39.unity_MatrixV[2i].z;
  u_xlat8.z = x_272;
  let x_274 : vec3<f32> = u_xlat1;
  let x_275 : vec4<f32> = u_xlat8;
  u_xlat52 = dot(x_274, vec3<f32>(x_275.x, x_275.y, x_275.z));
  let x_278 : vec4<f32> = u_xlat0;
  let x_282 : vec4<f32> = x_39.unity_ShadowFadeCenterAndType;
  let x_285 : vec3<f32> = (vec3<f32>(x_278.x, x_278.y, x_278.z) + -(vec3<f32>(x_282.x, x_282.y, x_282.z)));
  let x_286 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_285.x, x_285.y, x_285.z, x_286.w);
  let x_288 : vec4<f32> = u_xlat8;
  let x_290 : vec4<f32> = u_xlat8;
  u_xlat53 = dot(vec3<f32>(x_288.x, x_288.y, x_288.z), vec3<f32>(x_290.x, x_290.y, x_290.z));
  let x_293 : f32 = u_xlat53;
  u_xlat53 = sqrt(x_293);
  let x_295 : f32 = u_xlat52;
  let x_297 : f32 = u_xlat53;
  u_xlat53 = (-(x_295) + x_297);
  let x_300 : f32 = x_39.unity_ShadowFadeCenterAndType.w;
  let x_301 : f32 = u_xlat53;
  let x_303 : f32 = u_xlat52;
  u_xlat52 = ((x_300 * x_301) + x_303);
  let x_305 : f32 = u_xlat52;
  let x_308 : f32 = x_39.x_LightShadowData.z;
  let x_311 : f32 = x_39.x_LightShadowData.w;
  u_xlat52 = ((x_305 * x_308) + x_311);
  let x_313 : f32 = u_xlat52;
  u_xlat52 = clamp(x_313, 0.0f, 1.0f);
  let x_318 : f32 = x_39.unity_ProbeVolumeParams.x;
  u_xlatb53 = (x_318 == 1.0f);
  let x_320 : bool = u_xlatb53;
  if (x_320) {
    let x_325 : f32 = x_39.unity_ProbeVolumeParams.y;
    u_xlatb37 = (x_325 == 1.0f);
    let x_327 : vec4<f32> = vs_TEXCOORD2;
    let x_331 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[1i];
    let x_333 : vec3<f32> = (vec3<f32>(x_327.w, x_327.w, x_327.w) * vec3<f32>(x_331.x, x_331.y, x_331.z));
    let x_334 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
    let x_337 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[0i];
    let x_339 : vec4<f32> = vs_TEXCOORD1;
    let x_342 : vec4<f32> = u_xlat8;
    let x_344 : vec3<f32> = ((vec3<f32>(x_337.x, x_337.y, x_337.z) * vec3<f32>(x_339.w, x_339.w, x_339.w)) + vec3<f32>(x_342.x, x_342.y, x_342.z));
    let x_345 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_344.x, x_344.y, x_344.z, x_345.w);
    let x_348 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[2i];
    let x_350 : vec4<f32> = vs_TEXCOORD3;
    let x_353 : vec4<f32> = u_xlat8;
    let x_355 : vec3<f32> = ((vec3<f32>(x_348.x, x_348.y, x_348.z) * vec3<f32>(x_350.w, x_350.w, x_350.w)) + vec3<f32>(x_353.x, x_353.y, x_353.z));
    let x_356 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_355.x, x_355.y, x_355.z, x_356.w);
    let x_358 : vec4<f32> = u_xlat8;
    let x_362 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[3i];
    let x_364 : vec3<f32> = (vec3<f32>(x_358.x, x_358.y, x_358.z) + vec3<f32>(x_362.x, x_362.y, x_362.z));
    let x_365 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_364.x, x_364.y, x_364.z, x_365.w);
    let x_367 : bool = u_xlatb37;
    if (x_367) {
      let x_372 : vec4<f32> = u_xlat8;
      x_369 = vec3<f32>(x_372.x, x_372.y, x_372.z);
    } else {
      let x_375 : vec4<f32> = u_xlat0;
      x_369 = vec3<f32>(x_375.x, x_375.y, x_375.z);
    }
    let x_377 : vec3<f32> = x_369;
    let x_378 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_377.x, x_377.y, x_377.z, x_378.w);
    let x_380 : vec4<f32> = u_xlat8;
    let x_384 : vec3<f32> = x_39.unity_ProbeVolumeMin;
    let x_386 : vec3<f32> = (vec3<f32>(x_380.x, x_380.y, x_380.z) + -(x_384));
    let x_387 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_386.x, x_386.y, x_386.z, x_387.w);
    let x_389 : vec4<f32> = u_xlat8;
    let x_393 : vec3<f32> = x_39.unity_ProbeVolumeSizeInv;
    let x_394 : vec3<f32> = (vec3<f32>(x_389.x, x_389.y, x_389.z) * x_393);
    let x_395 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_395.x, x_394.x, x_394.y, x_394.z);
    let x_398 : f32 = u_xlat8.y;
    u_xlat37 = ((x_398 * 0.25f) + 0.75f);
    let x_405 : f32 = x_39.unity_ProbeVolumeParams.z;
    u_xlat55 = ((x_405 * 0.5f) + 0.75f);
    let x_409 : f32 = u_xlat37;
    let x_410 : f32 = u_xlat55;
    u_xlat8.x = max(x_409, x_410);
    let x_421 : vec4<f32> = u_xlat8;
    let x_423 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_421.x, x_421.z, x_421.w));
    u_xlat8 = x_423;
  } else {
    u_xlat8.x = 1.0f;
    u_xlat8.y = 1.0f;
    u_xlat8.z = 1.0f;
    u_xlat8.w = 1.0f;
  }
  let x_429 : vec4<f32> = u_xlat8;
  let x_432 : vec4<f32> = x_39.unity_OcclusionMaskSelector;
  u_xlat37 = dot(x_429, x_432);
  let x_434 : f32 = u_xlat37;
  u_xlat37 = clamp(x_434, 0.0f, 1.0f);
  let x_437 : vec4<f32> = vs_TEXCOORD6;
  let x_439 : vec4<f32> = vs_TEXCOORD6;
  let x_441 : vec2<f32> = (vec2<f32>(x_437.x, x_437.y) / vec2<f32>(x_439.w, x_439.w));
  let x_442 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_441.x, x_441.y, x_442.z, x_442.w);
  let x_449 : vec4<f32> = u_xlat8;
  let x_451 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_449.x, x_449.y));
  u_xlat55 = x_451.x;
  let x_453 : f32 = u_xlat37;
  let x_454 : f32 = u_xlat55;
  u_xlat37 = (x_453 + -(x_454));
  let x_457 : f32 = u_xlat52;
  let x_458 : f32 = u_xlat37;
  let x_460 : f32 = u_xlat55;
  u_xlat52 = ((x_457 * x_458) + x_460);
  let x_462 : vec4<f32> = vs_TEXCOORD1;
  let x_464 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(vec3<f32>(x_462.x, x_462.y, x_462.z), vec3<f32>(x_464.x, x_464.y, x_464.z));
  let x_468 : vec4<f32> = vs_TEXCOORD2;
  let x_470 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(vec3<f32>(x_468.x, x_468.y, x_468.z), vec3<f32>(x_470.x, x_470.y, x_470.z));
  let x_474 : vec4<f32> = vs_TEXCOORD3;
  let x_476 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(vec3<f32>(x_474.x, x_474.y, x_474.z), vec3<f32>(x_476.x, x_476.y, x_476.z));
  let x_480 : vec4<f32> = u_xlat8;
  let x_482 : vec4<f32> = u_xlat8;
  u_xlat37 = dot(vec3<f32>(x_480.x, x_480.y, x_480.z), vec3<f32>(x_482.x, x_482.y, x_482.z));
  let x_485 : f32 = u_xlat37;
  u_xlat37 = inverseSqrt(x_485);
  let x_487 : f32 = u_xlat37;
  let x_489 : vec4<f32> = u_xlat8;
  let x_491 : vec3<f32> = (vec3<f32>(x_487, x_487, x_487) * vec3<f32>(x_489.x, x_489.y, x_489.z));
  let x_492 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_491.x, x_491.y, x_491.z, x_492.w);
  let x_495 : f32 = u_xlat3.y;
  let x_499 : f32 = x_39.x_Glossiness;
  u_xlat37 = ((-(x_495) * x_499) + 1.0f);
  let x_502 : vec4<f32> = u_xlat2;
  let x_505 : vec4<f32> = u_xlat7;
  u_xlat55 = dot(-(vec3<f32>(x_502.x, x_502.y, x_502.z)), vec3<f32>(x_505.x, x_505.y, x_505.z));
  let x_508 : f32 = u_xlat55;
  let x_509 : f32 = u_xlat55;
  u_xlat55 = (x_508 + x_509);
  let x_511 : vec4<f32> = u_xlat7;
  let x_513 : f32 = u_xlat55;
  let x_517 : vec4<f32> = u_xlat2;
  let x_520 : vec3<f32> = ((vec3<f32>(x_511.x, x_511.y, x_511.z) * -(vec3<f32>(x_513, x_513, x_513))) + -(vec3<f32>(x_517.x, x_517.y, x_517.z)));
  let x_521 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_520.x, x_520.y, x_520.z, x_521.w);
  let x_524 : f32 = u_xlat52;
  let x_528 : vec4<f32> = x_39.x_LightColor0;
  u_xlat9 = (vec3<f32>(x_524, x_524, x_524) * vec3<f32>(x_528.x, x_528.y, x_528.z));
  let x_531 : bool = u_xlatb53;
  if (x_531) {
    let x_535 : f32 = x_39.unity_ProbeVolumeParams.y;
    u_xlatb52 = (x_535 == 1.0f);
    let x_538 : vec4<f32> = vs_TEXCOORD2;
    let x_541 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[1i];
    let x_543 : vec3<f32> = (vec3<f32>(x_538.w, x_538.w, x_538.w) * vec3<f32>(x_541.x, x_541.y, x_541.z));
    let x_544 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_543.x, x_543.y, x_543.z, x_544.w);
    let x_547 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[0i];
    let x_549 : vec4<f32> = vs_TEXCOORD1;
    let x_552 : vec4<f32> = u_xlat10;
    let x_554 : vec3<f32> = ((vec3<f32>(x_547.x, x_547.y, x_547.z) * vec3<f32>(x_549.w, x_549.w, x_549.w)) + vec3<f32>(x_552.x, x_552.y, x_552.z));
    let x_555 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_554.x, x_554.y, x_554.z, x_555.w);
    let x_558 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[2i];
    let x_560 : vec4<f32> = vs_TEXCOORD3;
    let x_563 : vec4<f32> = u_xlat10;
    let x_565 : vec3<f32> = ((vec3<f32>(x_558.x, x_558.y, x_558.z) * vec3<f32>(x_560.w, x_560.w, x_560.w)) + vec3<f32>(x_563.x, x_563.y, x_563.z));
    let x_566 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_565.x, x_565.y, x_565.z, x_566.w);
    let x_568 : vec4<f32> = u_xlat10;
    let x_571 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[3i];
    let x_573 : vec3<f32> = (vec3<f32>(x_568.x, x_568.y, x_568.z) + vec3<f32>(x_571.x, x_571.y, x_571.z));
    let x_574 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_573.x, x_573.y, x_573.z, x_574.w);
    let x_576 : bool = u_xlatb52;
    if (x_576) {
      let x_580 : vec4<f32> = u_xlat10;
      x_577 = vec3<f32>(x_580.x, x_580.y, x_580.z);
    } else {
      let x_583 : vec4<f32> = u_xlat0;
      x_577 = vec3<f32>(x_583.x, x_583.y, x_583.z);
    }
    let x_585 : vec3<f32> = x_577;
    let x_586 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_585.x, x_585.y, x_585.z, x_586.w);
    let x_588 : vec4<f32> = u_xlat10;
    let x_591 : vec3<f32> = x_39.unity_ProbeVolumeMin;
    let x_593 : vec3<f32> = (vec3<f32>(x_588.x, x_588.y, x_588.z) + -(x_591));
    let x_594 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_593.x, x_593.y, x_593.z, x_594.w);
    let x_596 : vec4<f32> = u_xlat10;
    let x_599 : vec3<f32> = x_39.unity_ProbeVolumeSizeInv;
    let x_600 : vec3<f32> = (vec3<f32>(x_596.x, x_596.y, x_596.z) * x_599);
    let x_601 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_601.x, x_600.x, x_600.y, x_600.z);
    let x_604 : f32 = u_xlat10.y;
    u_xlat52 = (x_604 * 0.25f);
    let x_607 : f32 = x_39.unity_ProbeVolumeParams.z;
    u_xlat53 = (x_607 * 0.5f);
    let x_610 : f32 = x_39.unity_ProbeVolumeParams.z;
    u_xlat55 = ((-(x_610) * 0.5f) + 0.25f);
    let x_614 : f32 = u_xlat52;
    let x_615 : f32 = u_xlat53;
    u_xlat52 = max(x_614, x_615);
    let x_617 : f32 = u_xlat55;
    let x_618 : f32 = u_xlat52;
    u_xlat10.x = min(x_617, x_618);
    let x_625 : vec4<f32> = u_xlat10;
    let x_627 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_625.x, x_625.z, x_625.w));
    u_xlat11 = x_627;
    let x_629 : vec4<f32> = u_xlat10;
    let x_632 : vec3<f32> = (vec3<f32>(x_629.x, x_629.z, x_629.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_633 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_632.x, x_632.y, x_632.z, x_633.w);
    let x_638 : vec4<f32> = u_xlat12;
    let x_640 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_638.x, x_638.y, x_638.z));
    u_xlat12 = x_640;
    let x_641 : vec4<f32> = u_xlat10;
    let x_644 : vec3<f32> = (vec3<f32>(x_641.x, x_641.z, x_641.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_645 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_644.x, x_644.y, x_644.z, x_645.w);
    let x_650 : vec4<f32> = u_xlat10;
    let x_652 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_650.x, x_650.y, x_650.z));
    u_xlat10 = x_652;
    u_xlat7.w = 1.0f;
    let x_654 : vec4<f32> = u_xlat11;
    let x_655 : vec4<f32> = u_xlat7;
    u_xlat11.x = dot(x_654, x_655);
    let x_658 : vec4<f32> = u_xlat12;
    let x_659 : vec4<f32> = u_xlat7;
    u_xlat11.y = dot(x_658, x_659);
    let x_662 : vec4<f32> = u_xlat10;
    let x_663 : vec4<f32> = u_xlat7;
    u_xlat11.z = dot(x_662, x_663);
  } else {
    u_xlat7.w = 1.0f;
    let x_669 : vec4<f32> = x_39.unity_SHAr;
    let x_670 : vec4<f32> = u_xlat7;
    u_xlat11.x = dot(x_669, x_670);
    let x_674 : vec4<f32> = x_39.unity_SHAg;
    let x_675 : vec4<f32> = u_xlat7;
    u_xlat11.y = dot(x_674, x_675);
    let x_680 : vec4<f32> = x_39.unity_SHAb;
    let x_681 : vec4<f32> = u_xlat7;
    u_xlat11.z = dot(x_680, x_681);
  }
  let x_684 : vec4<f32> = u_xlat11;
  let x_688 : vec3<f32> = vs_TEXCOORD4;
  let x_689 : vec3<f32> = (vec3<f32>(x_684.x, x_684.y, x_684.z) + x_688);
  let x_690 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_689.x, x_689.y, x_689.z, x_690.w);
  let x_692 : vec4<f32> = u_xlat10;
  let x_695 : vec3<f32> = max(vec3<f32>(x_692.x, x_692.y, x_692.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_696 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_695.x, x_695.y, x_695.z, x_696.w);
  let x_700 : f32 = x_39.unity_SpecCube0_ProbePosition.w;
  u_xlatb52 = (0.0f < x_700);
  let x_702 : bool = u_xlatb52;
  if (x_702) {
    let x_705 : vec4<f32> = u_xlat8;
    let x_707 : vec4<f32> = u_xlat8;
    u_xlat52 = dot(vec3<f32>(x_705.x, x_705.y, x_705.z), vec3<f32>(x_707.x, x_707.y, x_707.z));
    let x_710 : f32 = u_xlat52;
    u_xlat52 = inverseSqrt(x_710);
    let x_712 : f32 = u_xlat52;
    let x_714 : vec4<f32> = u_xlat8;
    let x_716 : vec3<f32> = (vec3<f32>(x_712, x_712, x_712) * vec3<f32>(x_714.x, x_714.y, x_714.z));
    let x_717 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_716.x, x_716.y, x_716.z, x_717.w);
    let x_719 : vec4<f32> = u_xlat0;
    let x_724 : vec4<f32> = x_39.unity_SpecCube0_BoxMax;
    let x_726 : vec3<f32> = (-(vec3<f32>(x_719.x, x_719.y, x_719.z)) + vec3<f32>(x_724.x, x_724.y, x_724.z));
    let x_727 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_726.x, x_726.y, x_726.z, x_727.w);
    let x_729 : vec4<f32> = u_xlat12;
    let x_731 : vec4<f32> = u_xlat11;
    let x_733 : vec3<f32> = (vec3<f32>(x_729.x, x_729.y, x_729.z) / vec3<f32>(x_731.x, x_731.y, x_731.z));
    let x_734 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_733.x, x_733.y, x_733.z, x_734.w);
    let x_737 : vec4<f32> = u_xlat0;
    let x_742 : vec4<f32> = x_39.unity_SpecCube0_BoxMin;
    u_xlat13 = (-(vec3<f32>(x_737.x, x_737.y, x_737.z)) + vec3<f32>(x_742.x, x_742.y, x_742.z));
    let x_745 : vec3<f32> = u_xlat13;
    let x_746 : vec4<f32> = u_xlat11;
    u_xlat13 = (x_745 / vec3<f32>(x_746.x, x_746.y, x_746.z));
    let x_753 : vec4<f32> = u_xlat11;
    let x_756 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_753.x, x_753.y, x_753.z, x_753.x));
    u_xlatb14 = vec3<bool>(x_756.x, x_756.y, x_756.z);
    let x_760 : vec4<f32> = u_xlat12;
    hlslcc_movcTemp = x_760;
    let x_762 : bool = u_xlatb14.x;
    if (x_762) {
      let x_768 : f32 = u_xlat12.x;
      x_764 = x_768;
    } else {
      let x_771 : f32 = u_xlat13.x;
      x_764 = x_771;
    }
    let x_772 : f32 = x_764;
    hlslcc_movcTemp.x = x_772;
    let x_775 : bool = u_xlatb14.y;
    if (x_775) {
      let x_780 : f32 = u_xlat12.y;
      x_776 = x_780;
    } else {
      let x_783 : f32 = u_xlat13.y;
      x_776 = x_783;
    }
    let x_784 : f32 = x_776;
    hlslcc_movcTemp.y = x_784;
    let x_787 : bool = u_xlatb14.z;
    if (x_787) {
      let x_792 : f32 = u_xlat12.z;
      x_788 = x_792;
    } else {
      let x_795 : f32 = u_xlat13.z;
      x_788 = x_795;
    }
    let x_796 : f32 = x_788;
    hlslcc_movcTemp.z = x_796;
    let x_798 : vec4<f32> = hlslcc_movcTemp;
    u_xlat12 = x_798;
    let x_800 : f32 = u_xlat12.y;
    let x_802 : f32 = u_xlat12.x;
    u_xlat52 = min(x_800, x_802);
    let x_805 : f32 = u_xlat12.z;
    let x_806 : f32 = u_xlat52;
    u_xlat52 = min(x_805, x_806);
    let x_808 : vec4<f32> = u_xlat0;
    let x_811 : vec4<f32> = x_39.unity_SpecCube0_ProbePosition;
    let x_814 : vec3<f32> = (vec3<f32>(x_808.x, x_808.y, x_808.z) + -(vec3<f32>(x_811.x, x_811.y, x_811.z)));
    let x_815 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_814.x, x_814.y, x_814.z, x_815.w);
    let x_817 : vec4<f32> = u_xlat11;
    let x_819 : f32 = u_xlat52;
    let x_822 : vec4<f32> = u_xlat12;
    let x_824 : vec3<f32> = ((vec3<f32>(x_817.x, x_817.y, x_817.z) * vec3<f32>(x_819, x_819, x_819)) + vec3<f32>(x_822.x, x_822.y, x_822.z));
    let x_825 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_824.x, x_824.y, x_824.z, x_825.w);
  } else {
    let x_828 : vec4<f32> = u_xlat8;
    let x_829 : vec3<f32> = vec3<f32>(x_828.x, x_828.y, x_828.z);
    let x_830 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_829.x, x_829.y, x_829.z, x_830.w);
  }
  let x_832 : f32 = u_xlat37;
  u_xlat52 = ((-(x_832) * 0.699999988f) + 1.700000048f);
  let x_838 : f32 = u_xlat52;
  let x_839 : f32 = u_xlat37;
  u_xlat52 = (x_838 * x_839);
  let x_841 : f32 = u_xlat52;
  u_xlat52 = (x_841 * 6.0f);
  let x_852 : vec4<f32> = u_xlat11;
  let x_854 : f32 = u_xlat52;
  let x_855 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_852.x, x_852.y, x_852.z), x_854);
  u_xlat11 = x_855;
  let x_857 : f32 = u_xlat11.w;
  u_xlat53 = (x_857 + -1.0f);
  let x_861 : f32 = x_39.unity_SpecCube0_HDR.w;
  let x_862 : f32 = u_xlat53;
  u_xlat53 = ((x_861 * x_862) + 1.0f);
  let x_865 : f32 = u_xlat53;
  u_xlat53 = log2(x_865);
  let x_867 : f32 = u_xlat53;
  let x_869 : f32 = x_39.unity_SpecCube0_HDR.y;
  u_xlat53 = (x_867 * x_869);
  let x_871 : f32 = u_xlat53;
  u_xlat53 = exp2(x_871);
  let x_873 : f32 = u_xlat53;
  let x_875 : f32 = x_39.unity_SpecCube0_HDR.x;
  u_xlat53 = (x_873 * x_875);
  let x_877 : vec4<f32> = u_xlat11;
  let x_879 : f32 = u_xlat53;
  let x_881 : vec3<f32> = (vec3<f32>(x_877.x, x_877.y, x_877.z) * vec3<f32>(x_879, x_879, x_879));
  let x_882 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_881.x, x_881.y, x_881.z, x_882.w);
  let x_886 : f32 = x_39.unity_SpecCube0_BoxMin.w;
  u_xlatb55 = (x_886 < 0.999989986f);
  let x_889 : bool = u_xlatb55;
  if (x_889) {
    let x_894 : f32 = x_39.unity_SpecCube1_ProbePosition.w;
    u_xlatb55 = (0.0f < x_894);
    let x_896 : bool = u_xlatb55;
    if (x_896) {
      let x_899 : vec4<f32> = u_xlat8;
      let x_901 : vec4<f32> = u_xlat8;
      u_xlat55 = dot(vec3<f32>(x_899.x, x_899.y, x_899.z), vec3<f32>(x_901.x, x_901.y, x_901.z));
      let x_904 : f32 = u_xlat55;
      u_xlat55 = inverseSqrt(x_904);
      let x_906 : f32 = u_xlat55;
      let x_908 : vec4<f32> = u_xlat8;
      u_xlat13 = (vec3<f32>(x_906, x_906, x_906) * vec3<f32>(x_908.x, x_908.y, x_908.z));
      let x_912 : vec4<f32> = u_xlat0;
      let x_917 : vec4<f32> = x_39.unity_SpecCube1_BoxMax;
      u_xlat14 = (-(vec3<f32>(x_912.x, x_912.y, x_912.z)) + vec3<f32>(x_917.x, x_917.y, x_917.z));
      let x_920 : vec3<f32> = u_xlat14;
      let x_921 : vec3<f32> = u_xlat13;
      u_xlat14 = (x_920 / x_921);
      let x_924 : vec4<f32> = u_xlat0;
      let x_929 : vec4<f32> = x_39.unity_SpecCube1_BoxMin;
      u_xlat15 = (-(vec3<f32>(x_924.x, x_924.y, x_924.z)) + vec3<f32>(x_929.x, x_929.y, x_929.z));
      let x_932 : vec3<f32> = u_xlat15;
      let x_933 : vec3<f32> = u_xlat13;
      u_xlat15 = (x_932 / x_933);
      let x_936 : vec3<f32> = u_xlat13;
      let x_938 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_936.x, x_936.y, x_936.z, x_936.x));
      u_xlatb16 = vec3<bool>(x_938.x, x_938.y, x_938.z);
      let x_941 : vec3<f32> = u_xlat14;
      hlslcc_movcTemp_1 = x_941;
      let x_943 : bool = u_xlatb16.x;
      if (x_943) {
        let x_948 : f32 = u_xlat14.x;
        x_944 = x_948;
      } else {
        let x_951 : f32 = u_xlat15.x;
        x_944 = x_951;
      }
      let x_952 : f32 = x_944;
      hlslcc_movcTemp_1.x = x_952;
      let x_955 : bool = u_xlatb16.y;
      if (x_955) {
        let x_960 : f32 = u_xlat14.y;
        x_956 = x_960;
      } else {
        let x_963 : f32 = u_xlat15.y;
        x_956 = x_963;
      }
      let x_964 : f32 = x_956;
      hlslcc_movcTemp_1.y = x_964;
      let x_967 : bool = u_xlatb16.z;
      if (x_967) {
        let x_972 : f32 = u_xlat14.z;
        x_968 = x_972;
      } else {
        let x_975 : f32 = u_xlat15.z;
        x_968 = x_975;
      }
      let x_976 : f32 = x_968;
      hlslcc_movcTemp_1.z = x_976;
      let x_978 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat14 = x_978;
      let x_980 : f32 = u_xlat14.y;
      let x_982 : f32 = u_xlat14.x;
      u_xlat55 = min(x_980, x_982);
      let x_985 : f32 = u_xlat14.z;
      let x_986 : f32 = u_xlat55;
      u_xlat55 = min(x_985, x_986);
      let x_988 : vec4<f32> = u_xlat0;
      let x_991 : vec4<f32> = x_39.unity_SpecCube1_ProbePosition;
      let x_994 : vec3<f32> = (vec3<f32>(x_988.x, x_988.y, x_988.z) + -(vec3<f32>(x_991.x, x_991.y, x_991.z)));
      let x_995 : vec4<f32> = u_xlat0;
      u_xlat0 = vec4<f32>(x_994.x, x_994.y, x_994.z, x_995.w);
      let x_997 : vec3<f32> = u_xlat13;
      let x_998 : f32 = u_xlat55;
      let x_1001 : vec4<f32> = u_xlat0;
      let x_1003 : vec3<f32> = ((x_997 * vec3<f32>(x_998, x_998, x_998)) + vec3<f32>(x_1001.x, x_1001.y, x_1001.z));
      let x_1004 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1003.x, x_1003.y, x_1003.z, x_1004.w);
    }
    let x_1010 : vec4<f32> = u_xlat8;
    let x_1012 : f32 = u_xlat52;
    let x_1013 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_1010.x, x_1010.y, x_1010.z), x_1012);
    u_xlat8 = x_1013;
    let x_1015 : f32 = u_xlat8.w;
    u_xlat0.x = (x_1015 + -1.0f);
    let x_1020 : f32 = x_39.unity_SpecCube1_HDR.w;
    let x_1022 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_1020 * x_1022) + 1.0f);
    let x_1027 : f32 = u_xlat0.x;
    u_xlat0.x = log2(x_1027);
    let x_1031 : f32 = u_xlat0.x;
    let x_1033 : f32 = x_39.unity_SpecCube1_HDR.y;
    u_xlat0.x = (x_1031 * x_1033);
    let x_1037 : f32 = u_xlat0.x;
    u_xlat0.x = exp2(x_1037);
    let x_1041 : f32 = u_xlat0.x;
    let x_1043 : f32 = x_39.unity_SpecCube1_HDR.x;
    u_xlat0.x = (x_1041 * x_1043);
    let x_1046 : vec4<f32> = u_xlat8;
    let x_1048 : vec4<f32> = u_xlat0;
    let x_1050 : vec3<f32> = (vec3<f32>(x_1046.x, x_1046.y, x_1046.z) * vec3<f32>(x_1048.x, x_1048.x, x_1048.x));
    let x_1051 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1050.x, x_1050.y, x_1050.z, x_1051.w);
    let x_1053 : f32 = u_xlat53;
    let x_1055 : vec4<f32> = u_xlat11;
    let x_1058 : vec4<f32> = u_xlat0;
    let x_1061 : vec3<f32> = ((vec3<f32>(x_1053, x_1053, x_1053) * vec3<f32>(x_1055.x, x_1055.y, x_1055.z)) + -(vec3<f32>(x_1058.x, x_1058.y, x_1058.z)));
    let x_1062 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1061.x, x_1061.y, x_1061.z, x_1062.w);
    let x_1065 : vec4<f32> = x_39.unity_SpecCube0_BoxMin;
    let x_1067 : vec4<f32> = u_xlat8;
    let x_1070 : vec4<f32> = u_xlat0;
    let x_1072 : vec3<f32> = ((vec3<f32>(x_1065.w, x_1065.w, x_1065.w) * vec3<f32>(x_1067.x, x_1067.y, x_1067.z)) + vec3<f32>(x_1070.x, x_1070.y, x_1070.z));
    let x_1073 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_1072.x, x_1072.y, x_1072.z, x_1073.w);
  }
  let x_1075 : f32 = u_xlat54;
  let x_1077 : vec4<f32> = u_xlat12;
  let x_1079 : vec3<f32> = (vec3<f32>(x_1075, x_1075, x_1075) * vec3<f32>(x_1077.x, x_1077.y, x_1077.z));
  let x_1080 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1079.x, x_1079.y, x_1079.z, x_1080.w);
  let x_1082 : vec4<f32> = u_xlat4;
  let x_1085 : vec4<f32> = x_39.x_Color;
  let x_1090 : vec3<f32> = ((vec3<f32>(x_1082.x, x_1082.y, x_1082.z) * vec3<f32>(x_1085.x, x_1085.y, x_1085.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_1091 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1090.x, x_1090.y, x_1090.z, x_1091.w);
  let x_1093 : vec3<f32> = u_xlat3;
  let x_1095 : vec4<f32> = u_xlat4;
  let x_1100 : vec3<f32> = ((vec3<f32>(x_1093.x, x_1093.x, x_1093.x) * vec3<f32>(x_1095.x, x_1095.y, x_1095.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_1101 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1100.x, x_1100.y, x_1100.z, x_1101.w);
  let x_1104 : f32 = u_xlat3.x;
  u_xlat52 = ((-(x_1104) * 0.959999979f) + 0.959999979f);
  let x_1109 : f32 = u_xlat52;
  let x_1111 : vec3<f32> = u_xlat5;
  u_xlat5 = (vec3<f32>(x_1109, x_1109, x_1109) * x_1111);
  let x_1113 : vec3<f32> = u_xlat1;
  let x_1114 : f32 = u_xlat51;
  let x_1118 : vec4<f32> = x_39.x_WorldSpaceLightPos0;
  u_xlat1 = ((x_1113 * vec3<f32>(x_1114, x_1114, x_1114)) + vec3<f32>(x_1118.x, x_1118.y, x_1118.z));
  let x_1121 : vec3<f32> = u_xlat1;
  let x_1122 : vec3<f32> = u_xlat1;
  u_xlat51 = dot(x_1121, x_1122);
  let x_1124 : f32 = u_xlat51;
  u_xlat51 = max(x_1124, 0.001f);
  let x_1127 : f32 = u_xlat51;
  u_xlat51 = inverseSqrt(x_1127);
  let x_1129 : f32 = u_xlat51;
  let x_1131 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_1129, x_1129, x_1129) * x_1131);
  let x_1133 : vec4<f32> = u_xlat7;
  let x_1135 : vec4<f32> = u_xlat2;
  u_xlat51 = dot(vec3<f32>(x_1133.x, x_1133.y, x_1133.z), vec3<f32>(x_1135.x, x_1135.y, x_1135.z));
  let x_1138 : vec4<f32> = u_xlat7;
  let x_1141 : vec4<f32> = x_39.x_WorldSpaceLightPos0;
  u_xlat2.x = dot(vec3<f32>(x_1138.x, x_1138.y, x_1138.z), vec3<f32>(x_1141.x, x_1141.y, x_1141.z));
  let x_1146 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1146, 0.0f, 1.0f);
  let x_1150 : vec4<f32> = u_xlat7;
  let x_1152 : vec3<f32> = u_xlat1;
  u_xlat19 = dot(vec3<f32>(x_1150.x, x_1150.y, x_1150.z), x_1152);
  let x_1154 : f32 = u_xlat19;
  u_xlat19 = clamp(x_1154, 0.0f, 1.0f);
  let x_1157 : vec4<f32> = x_39.x_WorldSpaceLightPos0;
  let x_1159 : vec3<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_1157.x, x_1157.y, x_1157.z), x_1159);
  let x_1163 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1163, 0.0f, 1.0f);
  let x_1168 : f32 = u_xlat1.x;
  let x_1170 : f32 = u_xlat1.x;
  u_xlat18 = (x_1168 * x_1170);
  let x_1172 : f32 = u_xlat18;
  let x_1174 : f32 = u_xlat37;
  u_xlat18 = dot(vec2<f32>(x_1172, x_1172), vec2<f32>(x_1174, x_1174));
  let x_1177 : f32 = u_xlat18;
  u_xlat18 = (x_1177 + -0.5f);
  let x_1182 : f32 = u_xlat2.x;
  u_xlat35 = (-(x_1182) + 1.0f);
  let x_1186 : f32 = u_xlat35;
  let x_1187 : f32 = u_xlat35;
  u_xlat36 = (x_1186 * x_1187);
  let x_1189 : f32 = u_xlat36;
  let x_1190 : f32 = u_xlat36;
  u_xlat36 = (x_1189 * x_1190);
  let x_1192 : f32 = u_xlat35;
  let x_1193 : f32 = u_xlat36;
  u_xlat35 = (x_1192 * x_1193);
  let x_1195 : f32 = u_xlat18;
  let x_1196 : f32 = u_xlat35;
  u_xlat35 = ((x_1195 * x_1196) + 1.0f);
  let x_1199 : f32 = u_xlat51;
  u_xlat36 = (-(abs(x_1199)) + 1.0f);
  let x_1203 : f32 = u_xlat36;
  let x_1204 : f32 = u_xlat36;
  u_xlat53 = (x_1203 * x_1204);
  let x_1206 : f32 = u_xlat53;
  let x_1207 : f32 = u_xlat53;
  u_xlat53 = (x_1206 * x_1207);
  let x_1209 : f32 = u_xlat36;
  let x_1210 : f32 = u_xlat53;
  u_xlat36 = (x_1209 * x_1210);
  let x_1212 : f32 = u_xlat18;
  let x_1213 : f32 = u_xlat36;
  u_xlat18 = ((x_1212 * x_1213) + 1.0f);
  let x_1216 : f32 = u_xlat18;
  let x_1217 : f32 = u_xlat35;
  u_xlat18 = (x_1216 * x_1217);
  let x_1220 : f32 = u_xlat2.x;
  let x_1221 : f32 = u_xlat18;
  u_xlat18 = (x_1220 * x_1221);
  let x_1223 : f32 = u_xlat37;
  let x_1224 : f32 = u_xlat37;
  u_xlat35 = (x_1223 * x_1224);
  let x_1226 : f32 = u_xlat35;
  u_xlat35 = max(x_1226, 0.002f);
  let x_1229 : f32 = u_xlat35;
  u_xlat53 = (-(x_1229) + 1.0f);
  let x_1232 : f32 = u_xlat51;
  let x_1234 : f32 = u_xlat53;
  let x_1236 : f32 = u_xlat35;
  u_xlat3.x = ((abs(x_1232) * x_1234) + x_1236);
  let x_1240 : f32 = u_xlat2.x;
  let x_1241 : f32 = u_xlat53;
  let x_1243 : f32 = u_xlat35;
  u_xlat53 = ((x_1240 * x_1241) + x_1243);
  let x_1245 : f32 = u_xlat51;
  let x_1247 : f32 = u_xlat53;
  u_xlat51 = (abs(x_1245) * x_1247);
  let x_1250 : f32 = u_xlat2.x;
  let x_1252 : f32 = u_xlat3.x;
  let x_1254 : f32 = u_xlat51;
  u_xlat51 = ((x_1250 * x_1252) + x_1254);
  let x_1256 : f32 = u_xlat51;
  u_xlat51 = (x_1256 + 0.00001f);
  let x_1259 : f32 = u_xlat51;
  u_xlat51 = (0.5f / x_1259);
  let x_1261 : f32 = u_xlat35;
  let x_1262 : f32 = u_xlat35;
  u_xlat53 = (x_1261 * x_1262);
  let x_1264 : f32 = u_xlat19;
  let x_1265 : f32 = u_xlat53;
  let x_1267 : f32 = u_xlat19;
  u_xlat3.x = ((x_1264 * x_1265) + -(x_1267));
  let x_1272 : f32 = u_xlat3.x;
  let x_1273 : f32 = u_xlat19;
  u_xlat19 = ((x_1272 * x_1273) + 1.0f);
  let x_1276 : f32 = u_xlat53;
  u_xlat53 = (x_1276 * 0.318309873f);
  let x_1279 : f32 = u_xlat19;
  let x_1280 : f32 = u_xlat19;
  u_xlat19 = ((x_1279 * x_1280) + 0.0000001f);
  let x_1284 : f32 = u_xlat53;
  let x_1285 : f32 = u_xlat19;
  u_xlat19 = (x_1284 / x_1285);
  let x_1287 : f32 = u_xlat51;
  let x_1288 : f32 = u_xlat19;
  u_xlat51 = (x_1287 * x_1288);
  let x_1291 : f32 = u_xlat2.x;
  let x_1292 : f32 = u_xlat51;
  u_xlat51 = (x_1291 * x_1292);
  let x_1294 : f32 = u_xlat51;
  u_xlat51 = (x_1294 * 3.141592741f);
  let x_1297 : f32 = u_xlat51;
  u_xlat51 = max(x_1297, 0.0f);
  let x_1299 : f32 = u_xlat35;
  let x_1300 : f32 = u_xlat35;
  u_xlat35 = ((x_1299 * x_1300) + 1.0f);
  let x_1303 : f32 = u_xlat35;
  u_xlat1.z = (1.0f / x_1303);
  let x_1306 : vec4<f32> = u_xlat4;
  let x_1308 : vec4<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_1306.x, x_1306.y, x_1306.z), vec3<f32>(x_1308.x, x_1308.y, x_1308.z));
  let x_1314 : f32 = u_xlat2.x;
  u_xlatb2 = !((x_1314 == 0.0f));
  let x_1316 : bool = u_xlatb2;
  u_xlat2.x = select(0.0f, 1.0f, x_1316);
  let x_1319 : f32 = u_xlat51;
  let x_1321 : f32 = u_xlat2.x;
  u_xlat51 = (x_1319 * x_1321);
  let x_1324 : f32 = u_xlat3.y;
  let x_1326 : f32 = x_39.x_Glossiness;
  let x_1328 : f32 = u_xlat52;
  u_xlat52 = ((x_1324 * x_1326) + -(x_1328));
  let x_1331 : f32 = u_xlat52;
  u_xlat52 = (x_1331 + 1.0f);
  let x_1333 : f32 = u_xlat52;
  u_xlat52 = clamp(x_1333, 0.0f, 1.0f);
  let x_1335 : f32 = u_xlat18;
  let x_1337 : vec3<f32> = u_xlat9;
  let x_1338 : vec3<f32> = (vec3<f32>(x_1335, x_1335, x_1335) * x_1337);
  let x_1339 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1338.x, x_1338.y, x_1339.z, x_1338.z);
  let x_1341 : vec4<f32> = u_xlat10;
  let x_1343 : f32 = u_xlat54;
  let x_1346 : vec4<f32> = u_xlat2;
  let x_1348 : vec3<f32> = ((vec3<f32>(x_1341.x, x_1341.y, x_1341.z) * vec3<f32>(x_1343, x_1343, x_1343)) + vec3<f32>(x_1346.x, x_1346.y, x_1346.w));
  let x_1349 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1348.x, x_1348.y, x_1349.z, x_1348.z);
  let x_1351 : vec3<f32> = u_xlat9;
  let x_1352 : f32 = u_xlat51;
  u_xlat3 = (x_1351 * vec3<f32>(x_1352, x_1352, x_1352));
  let x_1356 : f32 = u_xlat1.x;
  u_xlat0.w = (-(x_1356) + 1.0f);
  let x_1361 : f32 = u_xlat0.w;
  let x_1363 : f32 = u_xlat0.w;
  u_xlat1.x = (x_1361 * x_1363);
  let x_1367 : f32 = u_xlat1.x;
  let x_1369 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1367 * x_1369);
  let x_1372 : vec4<f32> = u_xlat0;
  let x_1373 : vec3<f32> = u_xlat1;
  u_xlat0 = (x_1372 * vec4<f32>(x_1373.z, x_1373.z, x_1373.z, x_1373.x));
  let x_1376 : vec4<f32> = u_xlat4;
  let x_1380 : vec3<f32> = (-(vec3<f32>(x_1376.x, x_1376.y, x_1376.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1381 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1380.x, x_1380.y, x_1380.z, x_1381.w);
  let x_1383 : vec4<f32> = u_xlat7;
  let x_1385 : vec4<f32> = u_xlat0;
  let x_1388 : vec4<f32> = u_xlat4;
  let x_1390 : vec3<f32> = ((vec3<f32>(x_1383.x, x_1383.y, x_1383.z) * vec3<f32>(x_1385.w, x_1385.w, x_1385.w)) + vec3<f32>(x_1388.x, x_1388.y, x_1388.z));
  let x_1391 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1390.x, x_1390.y, x_1390.z, x_1391.w);
  let x_1393 : vec3<f32> = u_xlat3;
  let x_1394 : vec4<f32> = u_xlat7;
  u_xlat3 = (x_1393 * vec3<f32>(x_1394.x, x_1394.y, x_1394.z));
  let x_1397 : vec3<f32> = u_xlat5;
  let x_1398 : vec4<f32> = u_xlat2;
  let x_1401 : vec3<f32> = u_xlat3;
  let x_1402 : vec3<f32> = ((x_1397 * vec3<f32>(x_1398.x, x_1398.y, x_1398.w)) + x_1401);
  let x_1403 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1402.x, x_1402.y, x_1403.z, x_1402.z);
  let x_1405 : vec4<f32> = u_xlat4;
  let x_1408 : f32 = u_xlat52;
  u_xlat1 = (-(vec3<f32>(x_1405.x, x_1405.y, x_1405.z)) + vec3<f32>(x_1408, x_1408, x_1408));
  let x_1411 : f32 = u_xlat36;
  let x_1413 : vec3<f32> = u_xlat1;
  let x_1415 : vec4<f32> = u_xlat4;
  u_xlat1 = ((vec3<f32>(x_1411, x_1411, x_1411) * x_1413) + vec3<f32>(x_1415.x, x_1415.y, x_1415.z));
  let x_1418 : vec4<f32> = u_xlat0;
  let x_1420 : vec3<f32> = u_xlat1;
  let x_1422 : vec4<f32> = u_xlat2;
  let x_1424 : vec3<f32> = ((vec3<f32>(x_1418.x, x_1418.y, x_1418.z) * x_1420) + vec3<f32>(x_1422.x, x_1422.y, x_1422.w));
  let x_1425 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1424.x, x_1424.y, x_1424.z, x_1425.w);
  let x_1429 : vec3<f32> = u_xlat6;
  let x_1430 : vec4<f32> = u_xlat0;
  let x_1432 : vec3<f32> = (x_1429 + vec3<f32>(x_1430.x, x_1430.y, x_1430.z));
  let x_1433 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1432.x, x_1432.y, x_1432.z, x_1433.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(5) vs_TEXCOORD6_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

