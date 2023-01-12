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
  x_Color : vec4<f32>,
  x_BumpScale : f32,
  x_Metallic : f32,
  x_Glossiness : f32,
  x_OcclusionStrength : f32,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_33 : PGlobals;

@group(0) @binding(1) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(6) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(8) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(0) @binding(2) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_ShadowMapTexture : sampler;

@group(0) @binding(3) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_OcclusionMap : sampler;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(4) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(5) var unity_SpecCube1 : texture_cube<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat45 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat46 : f32;
  var u_xlat17 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat48 : f32;
  var u_xlat49 : f32;
  var u_xlatb49 : bool;
  var u_xlatb5 : bool;
  var u_xlat20 : vec3<f32>;
  var x_318 : vec3<f32>;
  var u_xlat35 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlatb48 : bool;
  var u_xlat8 : vec4<f32>;
  var x_526 : vec3<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlatb47 : bool;
  var u_xlat47 : f32;
  var u_xlat11 : vec3<f32>;
  var u_xlatb12 : vec3<bool>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_710 : f32;
  var x_722 : f32;
  var x_734 : f32;
  var u_xlat12 : vec3<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb14 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_887 : f32;
  var x_899 : f32;
  var x_911 : f32;
  var u_xlat32 : f32;
  var u_xlat18 : f32;
  var u_xlat33 : f32;
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
  u_xlat45 = ((-(x_70) * 0.959999979f) + 0.959999979f);
  let x_75 : f32 = u_xlat45;
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
  let x_121 : vec4<f32> = u_xlat2;
  let x_123 : vec4<f32> = u_xlat2;
  u_xlat46 = dot(vec2<f32>(x_121.x, x_121.y), vec2<f32>(x_123.x, x_123.y));
  let x_126 : f32 = u_xlat46;
  u_xlat46 = min(x_126, 1.0f);
  let x_129 : f32 = u_xlat46;
  u_xlat46 = (-(x_129) + 1.0f);
  let x_132 : f32 = u_xlat46;
  u_xlat46 = sqrt(x_132);
  let x_135 : vec4<f32> = u_xlat2;
  let x_138 : vec4<f32> = vs_TEXCOORD3;
  u_xlat17 = (vec3<f32>(x_135.y, x_135.y, x_135.y) * vec3<f32>(x_138.x, x_138.y, x_138.z));
  let x_142 : vec4<f32> = vs_TEXCOORD2;
  let x_144 : vec4<f32> = u_xlat2;
  let x_147 : vec3<f32> = u_xlat17;
  let x_148 : vec3<f32> = ((vec3<f32>(x_142.x, x_142.y, x_142.z) * vec3<f32>(x_144.x, x_144.x, x_144.x)) + x_147);
  let x_149 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_148.x, x_148.y, x_148.z, x_149.w);
  let x_152 : vec4<f32> = vs_TEXCOORD4;
  let x_154 : f32 = u_xlat46;
  let x_157 : vec4<f32> = u_xlat2;
  let x_159 : vec3<f32> = ((vec3<f32>(x_152.x, x_152.y, x_152.z) * vec3<f32>(x_154, x_154, x_154)) + vec3<f32>(x_157.x, x_157.y, x_157.z));
  let x_160 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_159.x, x_159.y, x_159.z, x_160.w);
  let x_162 : vec4<f32> = u_xlat2;
  let x_164 : vec4<f32> = u_xlat2;
  u_xlat46 = dot(vec3<f32>(x_162.x, x_162.y, x_162.z), vec3<f32>(x_164.x, x_164.y, x_164.z));
  let x_167 : f32 = u_xlat46;
  u_xlat46 = inverseSqrt(x_167);
  let x_169 : f32 = u_xlat46;
  let x_171 : vec4<f32> = u_xlat2;
  let x_173 : vec3<f32> = (vec3<f32>(x_169, x_169, x_169) * vec3<f32>(x_171.x, x_171.y, x_171.z));
  let x_174 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_173.x, x_173.y, x_173.z, x_174.w);
  let x_177 : vec4<f32> = vs_TEXCOORD1;
  let x_179 : vec4<f32> = vs_TEXCOORD1;
  u_xlat46 = dot(vec3<f32>(x_177.x, x_177.y, x_177.z), vec3<f32>(x_179.x, x_179.y, x_179.z));
  let x_182 : f32 = u_xlat46;
  u_xlat46 = inverseSqrt(x_182);
  let x_185 : f32 = u_xlat46;
  let x_187 : vec4<f32> = vs_TEXCOORD1;
  let x_189 : vec3<f32> = (vec3<f32>(x_185, x_185, x_185) * vec3<f32>(x_187.x, x_187.y, x_187.z));
  let x_190 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_189.x, x_189.y, x_189.z, x_190.w);
  let x_196 : f32 = vs_TEXCOORD2.w;
  u_xlat4.x = x_196;
  let x_199 : f32 = vs_TEXCOORD3.w;
  u_xlat4.y = x_199;
  let x_203 : f32 = vs_TEXCOORD4.w;
  u_xlat4.z = x_203;
  let x_206 : vec4<f32> = u_xlat4;
  let x_212 : vec3<f32> = x_33.x_WorldSpaceCameraPos;
  let x_213 : vec3<f32> = (-(vec3<f32>(x_206.x, x_206.y, x_206.z)) + x_212);
  let x_214 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_213.x, x_213.y, x_213.z, x_214.w);
  let x_219 : f32 = x_33.unity_MatrixV[0i].z;
  u_xlat6.x = x_219;
  let x_223 : f32 = x_33.unity_MatrixV[1i].z;
  u_xlat6.y = x_223;
  let x_227 : f32 = x_33.unity_MatrixV[2i].z;
  u_xlat6.z = x_227;
  let x_230 : vec4<f32> = u_xlat5;
  let x_232 : vec3<f32> = u_xlat6;
  u_xlat48 = dot(vec3<f32>(x_230.x, x_230.y, x_230.z), x_232);
  let x_234 : vec4<f32> = u_xlat4;
  let x_238 : vec4<f32> = x_33.unity_ShadowFadeCenterAndType;
  let x_241 : vec3<f32> = (vec3<f32>(x_234.x, x_234.y, x_234.z) + -(vec3<f32>(x_238.x, x_238.y, x_238.z)));
  let x_242 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_241.x, x_241.y, x_241.z, x_242.w);
  let x_245 : vec4<f32> = u_xlat5;
  let x_247 : vec4<f32> = u_xlat5;
  u_xlat49 = dot(vec3<f32>(x_245.x, x_245.y, x_245.z), vec3<f32>(x_247.x, x_247.y, x_247.z));
  let x_250 : f32 = u_xlat49;
  u_xlat49 = sqrt(x_250);
  let x_252 : f32 = u_xlat48;
  let x_254 : f32 = u_xlat49;
  u_xlat49 = (-(x_252) + x_254);
  let x_257 : f32 = x_33.unity_ShadowFadeCenterAndType.w;
  let x_258 : f32 = u_xlat49;
  let x_260 : f32 = u_xlat48;
  u_xlat48 = ((x_257 * x_258) + x_260);
  let x_262 : f32 = u_xlat48;
  let x_265 : f32 = x_33.x_LightShadowData.z;
  let x_268 : f32 = x_33.x_LightShadowData.w;
  u_xlat48 = ((x_262 * x_265) + x_268);
  let x_270 : f32 = u_xlat48;
  u_xlat48 = clamp(x_270, 0.0f, 1.0f);
  let x_278 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb49 = (x_278 == 1.0f);
  let x_280 : bool = u_xlatb49;
  if (x_280) {
    let x_285 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb5 = (x_285 == 1.0f);
    let x_288 : vec4<f32> = vs_TEXCOORD3;
    let x_292 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    u_xlat20 = (vec3<f32>(x_288.w, x_288.w, x_288.w) * vec3<f32>(x_292.x, x_292.y, x_292.z));
    let x_296 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_298 : vec4<f32> = vs_TEXCOORD2;
    let x_301 : vec3<f32> = u_xlat20;
    u_xlat20 = ((vec3<f32>(x_296.x, x_296.y, x_296.z) * vec3<f32>(x_298.w, x_298.w, x_298.w)) + x_301);
    let x_304 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_306 : vec4<f32> = vs_TEXCOORD4;
    let x_309 : vec3<f32> = u_xlat20;
    u_xlat20 = ((vec3<f32>(x_304.x, x_304.y, x_304.z) * vec3<f32>(x_306.w, x_306.w, x_306.w)) + x_309);
    let x_311 : vec3<f32> = u_xlat20;
    let x_314 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    u_xlat20 = (x_311 + vec3<f32>(x_314.x, x_314.y, x_314.z));
    let x_317 : bool = u_xlatb5;
    if (x_317) {
      let x_321 : vec3<f32> = u_xlat20;
      x_318 = x_321;
    } else {
      let x_323 : vec4<f32> = u_xlat4;
      x_318 = vec3<f32>(x_323.x, x_323.y, x_323.z);
    }
    let x_325 : vec3<f32> = x_318;
    let x_326 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_325.x, x_325.y, x_325.z, x_326.w);
    let x_328 : vec4<f32> = u_xlat5;
    let x_332 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_334 : vec3<f32> = (vec3<f32>(x_328.x, x_328.y, x_328.z) + -(x_332));
    let x_335 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
    let x_337 : vec4<f32> = u_xlat5;
    let x_341 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_342 : vec3<f32> = (vec3<f32>(x_337.x, x_337.y, x_337.z) * x_341);
    let x_343 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_343.x, x_342.x, x_342.y, x_342.z);
    let x_346 : f32 = u_xlat5.y;
    u_xlat20.x = ((x_346 * 0.25f) + 0.75f);
    let x_353 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat6.x = ((x_353 * 0.5f) + 0.75f);
    let x_359 : f32 = u_xlat20.x;
    let x_361 : f32 = u_xlat6.x;
    u_xlat5.x = max(x_359, x_361);
    let x_372 : vec4<f32> = u_xlat5;
    let x_374 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_372.x, x_372.z, x_372.w));
    u_xlat5 = x_374;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_380 : vec4<f32> = u_xlat5;
  let x_383 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat5.x = dot(x_380, x_383);
  let x_387 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_387, 0.0f, 1.0f);
  let x_391 : vec4<f32> = vs_TEXCOORD7;
  let x_393 : vec4<f32> = vs_TEXCOORD7;
  let x_395 : vec2<f32> = (vec2<f32>(x_391.x, x_391.y) / vec2<f32>(x_393.w, x_393.w));
  let x_396 : vec3<f32> = u_xlat20;
  u_xlat20 = vec3<f32>(x_395.x, x_395.y, x_396.z);
  let x_403 : vec3<f32> = u_xlat20;
  let x_405 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_403.x, x_403.y));
  u_xlat20.x = x_405.x;
  let x_409 : f32 = u_xlat20.x;
  let x_412 : f32 = u_xlat5.x;
  u_xlat5.x = (-(x_409) + x_412);
  let x_415 : f32 = u_xlat48;
  let x_417 : f32 = u_xlat5.x;
  let x_420 : f32 = u_xlat20.x;
  u_xlat48 = ((x_415 * x_417) + x_420);
  let x_427 : vec4<f32> = vs_TEXCOORD0;
  let x_429 : vec4<f32> = textureSample(x_OcclusionMap, sampler_OcclusionMap, vec2<f32>(x_427.x, x_427.y));
  u_xlat5.x = x_429.y;
  let x_434 : f32 = x_33.x_OcclusionStrength;
  u_xlat20.x = (-(x_434) + 1.0f);
  let x_439 : f32 = u_xlat5.x;
  let x_441 : f32 = x_33.x_OcclusionStrength;
  let x_444 : f32 = u_xlat20.x;
  u_xlat5.x = ((x_439 * x_441) + x_444);
  let x_449 : f32 = x_33.x_Glossiness;
  u_xlat20.x = (-(x_449) + 1.0f);
  let x_454 : vec4<f32> = u_xlat3;
  let x_456 : vec4<f32> = u_xlat2;
  u_xlat35 = dot(vec3<f32>(x_454.x, x_454.y, x_454.z), vec3<f32>(x_456.x, x_456.y, x_456.z));
  let x_459 : f32 = u_xlat35;
  let x_460 : f32 = u_xlat35;
  u_xlat35 = (x_459 + x_460);
  let x_462 : vec4<f32> = u_xlat2;
  let x_464 : f32 = u_xlat35;
  let x_468 : vec4<f32> = u_xlat3;
  u_xlat6 = ((vec3<f32>(x_462.x, x_462.y, x_462.z) * -(vec3<f32>(x_464, x_464, x_464))) + vec3<f32>(x_468.x, x_468.y, x_468.z));
  let x_472 : f32 = u_xlat48;
  let x_476 : vec4<f32> = x_33.x_LightColor0;
  u_xlat7 = (vec3<f32>(x_472, x_472, x_472) * vec3<f32>(x_476.x, x_476.y, x_476.z));
  let x_479 : bool = u_xlatb49;
  if (x_479) {
    let x_484 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb48 = (x_484 == 1.0f);
    let x_487 : vec4<f32> = vs_TEXCOORD3;
    let x_490 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_492 : vec3<f32> = (vec3<f32>(x_487.w, x_487.w, x_487.w) * vec3<f32>(x_490.x, x_490.y, x_490.z));
    let x_493 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_492.x, x_492.y, x_492.z, x_493.w);
    let x_496 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_498 : vec4<f32> = vs_TEXCOORD2;
    let x_501 : vec4<f32> = u_xlat8;
    let x_503 : vec3<f32> = ((vec3<f32>(x_496.x, x_496.y, x_496.z) * vec3<f32>(x_498.w, x_498.w, x_498.w)) + vec3<f32>(x_501.x, x_501.y, x_501.z));
    let x_504 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_503.x, x_503.y, x_503.z, x_504.w);
    let x_507 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_509 : vec4<f32> = vs_TEXCOORD4;
    let x_512 : vec4<f32> = u_xlat8;
    let x_514 : vec3<f32> = ((vec3<f32>(x_507.x, x_507.y, x_507.z) * vec3<f32>(x_509.w, x_509.w, x_509.w)) + vec3<f32>(x_512.x, x_512.y, x_512.z));
    let x_515 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_514.x, x_514.y, x_514.z, x_515.w);
    let x_517 : vec4<f32> = u_xlat8;
    let x_520 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_522 : vec3<f32> = (vec3<f32>(x_517.x, x_517.y, x_517.z) + vec3<f32>(x_520.x, x_520.y, x_520.z));
    let x_523 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_522.x, x_522.y, x_522.z, x_523.w);
    let x_525 : bool = u_xlatb48;
    if (x_525) {
      let x_529 : vec4<f32> = u_xlat8;
      x_526 = vec3<f32>(x_529.x, x_529.y, x_529.z);
    } else {
      let x_532 : vec4<f32> = u_xlat4;
      x_526 = vec3<f32>(x_532.x, x_532.y, x_532.z);
    }
    let x_534 : vec3<f32> = x_526;
    let x_535 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_534.x, x_534.y, x_534.z, x_535.w);
    let x_537 : vec4<f32> = u_xlat8;
    let x_540 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_542 : vec3<f32> = (vec3<f32>(x_537.x, x_537.y, x_537.z) + -(x_540));
    let x_543 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_542.x, x_542.y, x_542.z, x_543.w);
    let x_545 : vec4<f32> = u_xlat8;
    let x_548 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_549 : vec3<f32> = (vec3<f32>(x_545.x, x_545.y, x_545.z) * x_548);
    let x_550 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_550.x, x_549.x, x_549.y, x_549.z);
    let x_553 : f32 = u_xlat8.y;
    u_xlat48 = (x_553 * 0.25f);
    let x_556 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat49 = (x_556 * 0.5f);
    let x_559 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat35 = ((-(x_559) * 0.5f) + 0.25f);
    let x_563 : f32 = u_xlat48;
    let x_564 : f32 = u_xlat49;
    u_xlat48 = max(x_563, x_564);
    let x_566 : f32 = u_xlat35;
    let x_567 : f32 = u_xlat48;
    u_xlat8.x = min(x_566, x_567);
    let x_574 : vec4<f32> = u_xlat8;
    let x_576 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_574.x, x_574.z, x_574.w));
    u_xlat9 = x_576;
    let x_578 : vec4<f32> = u_xlat8;
    let x_581 : vec3<f32> = (vec3<f32>(x_578.x, x_578.z, x_578.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_582 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_581.x, x_581.y, x_581.z, x_582.w);
    let x_587 : vec4<f32> = u_xlat10;
    let x_589 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_587.x, x_587.y, x_587.z));
    u_xlat10 = x_589;
    let x_590 : vec4<f32> = u_xlat8;
    let x_593 : vec3<f32> = (vec3<f32>(x_590.x, x_590.z, x_590.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_594 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_593.x, x_593.y, x_593.z, x_594.w);
    let x_599 : vec4<f32> = u_xlat8;
    let x_601 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_599.x, x_599.y, x_599.z));
    u_xlat8 = x_601;
    u_xlat2.w = 1.0f;
    let x_603 : vec4<f32> = u_xlat9;
    let x_604 : vec4<f32> = u_xlat2;
    u_xlat9.x = dot(x_603, x_604);
    let x_607 : vec4<f32> = u_xlat10;
    let x_608 : vec4<f32> = u_xlat2;
    u_xlat9.y = dot(x_607, x_608);
    let x_611 : vec4<f32> = u_xlat8;
    let x_612 : vec4<f32> = u_xlat2;
    u_xlat9.z = dot(x_611, x_612);
  } else {
    u_xlat2.w = 1.0f;
    let x_618 : vec4<f32> = x_33.unity_SHAr;
    let x_619 : vec4<f32> = u_xlat2;
    u_xlat9.x = dot(x_618, x_619);
    let x_623 : vec4<f32> = x_33.unity_SHAg;
    let x_624 : vec4<f32> = u_xlat2;
    u_xlat9.y = dot(x_623, x_624);
    let x_629 : vec4<f32> = x_33.unity_SHAb;
    let x_630 : vec4<f32> = u_xlat2;
    u_xlat9.z = dot(x_629, x_630);
  }
  let x_633 : vec4<f32> = u_xlat9;
  let x_636 : vec4<f32> = vs_TEXCOORD5;
  let x_638 : vec3<f32> = (vec3<f32>(x_633.x, x_633.y, x_633.z) + vec3<f32>(x_636.x, x_636.y, x_636.z));
  let x_639 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_638.x, x_638.y, x_638.z, x_639.w);
  let x_641 : vec4<f32> = u_xlat8;
  let x_644 : vec3<f32> = max(vec3<f32>(x_641.x, x_641.y, x_641.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_645 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_644.x, x_644.y, x_644.z, x_645.w);
  let x_650 : f32 = x_33.unity_SpecCube0_ProbePosition.w;
  u_xlatb47 = (0.0f < x_650);
  let x_652 : bool = u_xlatb47;
  if (x_652) {
    let x_656 : vec3<f32> = u_xlat6;
    let x_657 : vec3<f32> = u_xlat6;
    u_xlat47 = dot(x_656, x_657);
    let x_659 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_659);
    let x_661 : f32 = u_xlat47;
    let x_663 : vec3<f32> = u_xlat6;
    let x_664 : vec3<f32> = (vec3<f32>(x_661, x_661, x_661) * x_663);
    let x_665 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_664.x, x_664.y, x_664.z, x_665.w);
    let x_667 : vec4<f32> = u_xlat4;
    let x_672 : vec4<f32> = x_33.unity_SpecCube0_BoxMax;
    let x_674 : vec3<f32> = (-(vec3<f32>(x_667.x, x_667.y, x_667.z)) + vec3<f32>(x_672.x, x_672.y, x_672.z));
    let x_675 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_674.x, x_674.y, x_674.z, x_675.w);
    let x_677 : vec4<f32> = u_xlat10;
    let x_679 : vec4<f32> = u_xlat9;
    let x_681 : vec3<f32> = (vec3<f32>(x_677.x, x_677.y, x_677.z) / vec3<f32>(x_679.x, x_679.y, x_679.z));
    let x_682 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_681.x, x_681.y, x_681.z, x_682.w);
    let x_685 : vec4<f32> = u_xlat4;
    let x_690 : vec4<f32> = x_33.unity_SpecCube0_BoxMin;
    u_xlat11 = (-(vec3<f32>(x_685.x, x_685.y, x_685.z)) + vec3<f32>(x_690.x, x_690.y, x_690.z));
    let x_693 : vec3<f32> = u_xlat11;
    let x_694 : vec4<f32> = u_xlat9;
    u_xlat11 = (x_693 / vec3<f32>(x_694.x, x_694.y, x_694.z));
    let x_701 : vec4<f32> = u_xlat9;
    let x_704 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_701.x, x_701.y, x_701.z, x_701.x));
    u_xlatb12 = vec3<bool>(x_704.x, x_704.y, x_704.z);
    let x_707 : vec4<f32> = u_xlat10;
    hlslcc_movcTemp = x_707;
    let x_709 : bool = u_xlatb12.x;
    if (x_709) {
      let x_714 : f32 = u_xlat10.x;
      x_710 = x_714;
    } else {
      let x_717 : f32 = u_xlat11.x;
      x_710 = x_717;
    }
    let x_718 : f32 = x_710;
    hlslcc_movcTemp.x = x_718;
    let x_721 : bool = u_xlatb12.y;
    if (x_721) {
      let x_726 : f32 = u_xlat10.y;
      x_722 = x_726;
    } else {
      let x_729 : f32 = u_xlat11.y;
      x_722 = x_729;
    }
    let x_730 : f32 = x_722;
    hlslcc_movcTemp.y = x_730;
    let x_733 : bool = u_xlatb12.z;
    if (x_733) {
      let x_738 : f32 = u_xlat10.z;
      x_734 = x_738;
    } else {
      let x_741 : f32 = u_xlat11.z;
      x_734 = x_741;
    }
    let x_742 : f32 = x_734;
    hlslcc_movcTemp.z = x_742;
    let x_744 : vec4<f32> = hlslcc_movcTemp;
    u_xlat10 = x_744;
    let x_746 : f32 = u_xlat10.y;
    let x_748 : f32 = u_xlat10.x;
    u_xlat47 = min(x_746, x_748);
    let x_751 : f32 = u_xlat10.z;
    let x_752 : f32 = u_xlat47;
    u_xlat47 = min(x_751, x_752);
    let x_754 : vec4<f32> = u_xlat4;
    let x_757 : vec4<f32> = x_33.unity_SpecCube0_ProbePosition;
    let x_760 : vec3<f32> = (vec3<f32>(x_754.x, x_754.y, x_754.z) + -(vec3<f32>(x_757.x, x_757.y, x_757.z)));
    let x_761 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_760.x, x_760.y, x_760.z, x_761.w);
    let x_763 : vec4<f32> = u_xlat9;
    let x_765 : f32 = u_xlat47;
    let x_768 : vec4<f32> = u_xlat10;
    let x_770 : vec3<f32> = ((vec3<f32>(x_763.x, x_763.y, x_763.z) * vec3<f32>(x_765, x_765, x_765)) + vec3<f32>(x_768.x, x_768.y, x_768.z));
    let x_771 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_770.x, x_770.y, x_770.z, x_771.w);
  } else {
    let x_774 : vec3<f32> = u_xlat6;
    let x_775 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_774.x, x_774.y, x_774.z, x_775.w);
  }
  let x_778 : f32 = u_xlat20.x;
  u_xlat47 = ((-(x_778) * 0.699999988f) + 1.700000048f);
  let x_784 : f32 = u_xlat47;
  let x_786 : f32 = u_xlat20.x;
  u_xlat47 = (x_784 * x_786);
  let x_788 : f32 = u_xlat47;
  u_xlat47 = (x_788 * 6.0f);
  let x_799 : vec4<f32> = u_xlat9;
  let x_801 : f32 = u_xlat47;
  let x_802 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_799.x, x_799.y, x_799.z), x_801);
  u_xlat9 = x_802;
  let x_804 : f32 = u_xlat9.w;
  u_xlat48 = (x_804 + -1.0f);
  let x_808 : f32 = x_33.unity_SpecCube0_HDR.w;
  let x_809 : f32 = u_xlat48;
  u_xlat48 = ((x_808 * x_809) + 1.0f);
  let x_812 : f32 = u_xlat48;
  u_xlat48 = log2(x_812);
  let x_814 : f32 = u_xlat48;
  let x_816 : f32 = x_33.unity_SpecCube0_HDR.y;
  u_xlat48 = (x_814 * x_816);
  let x_818 : f32 = u_xlat48;
  u_xlat48 = exp2(x_818);
  let x_820 : f32 = u_xlat48;
  let x_822 : f32 = x_33.unity_SpecCube0_HDR.x;
  u_xlat48 = (x_820 * x_822);
  let x_824 : vec4<f32> = u_xlat9;
  let x_826 : f32 = u_xlat48;
  let x_828 : vec3<f32> = (vec3<f32>(x_824.x, x_824.y, x_824.z) * vec3<f32>(x_826, x_826, x_826));
  let x_829 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_828.x, x_828.y, x_828.z, x_829.w);
  let x_832 : f32 = x_33.unity_SpecCube0_BoxMin.w;
  u_xlatb49 = (x_832 < 0.999989986f);
  let x_835 : bool = u_xlatb49;
  if (x_835) {
    let x_840 : f32 = x_33.unity_SpecCube1_ProbePosition.w;
    u_xlatb49 = (0.0f < x_840);
    let x_842 : bool = u_xlatb49;
    if (x_842) {
      let x_845 : vec3<f32> = u_xlat6;
      let x_846 : vec3<f32> = u_xlat6;
      u_xlat49 = dot(x_845, x_846);
      let x_848 : f32 = u_xlat49;
      u_xlat49 = inverseSqrt(x_848);
      let x_850 : f32 = u_xlat49;
      let x_852 : vec3<f32> = u_xlat6;
      u_xlat11 = (vec3<f32>(x_850, x_850, x_850) * x_852);
      let x_855 : vec4<f32> = u_xlat4;
      let x_860 : vec4<f32> = x_33.unity_SpecCube1_BoxMax;
      u_xlat12 = (-(vec3<f32>(x_855.x, x_855.y, x_855.z)) + vec3<f32>(x_860.x, x_860.y, x_860.z));
      let x_863 : vec3<f32> = u_xlat12;
      let x_864 : vec3<f32> = u_xlat11;
      u_xlat12 = (x_863 / x_864);
      let x_867 : vec4<f32> = u_xlat4;
      let x_872 : vec4<f32> = x_33.unity_SpecCube1_BoxMin;
      u_xlat13 = (-(vec3<f32>(x_867.x, x_867.y, x_867.z)) + vec3<f32>(x_872.x, x_872.y, x_872.z));
      let x_875 : vec3<f32> = u_xlat13;
      let x_876 : vec3<f32> = u_xlat11;
      u_xlat13 = (x_875 / x_876);
      let x_879 : vec3<f32> = u_xlat11;
      let x_881 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_879.x, x_879.y, x_879.z, x_879.x));
      u_xlatb14 = vec3<bool>(x_881.x, x_881.y, x_881.z);
      let x_884 : vec3<f32> = u_xlat12;
      hlslcc_movcTemp_1 = x_884;
      let x_886 : bool = u_xlatb14.x;
      if (x_886) {
        let x_891 : f32 = u_xlat12.x;
        x_887 = x_891;
      } else {
        let x_894 : f32 = u_xlat13.x;
        x_887 = x_894;
      }
      let x_895 : f32 = x_887;
      hlslcc_movcTemp_1.x = x_895;
      let x_898 : bool = u_xlatb14.y;
      if (x_898) {
        let x_903 : f32 = u_xlat12.y;
        x_899 = x_903;
      } else {
        let x_906 : f32 = u_xlat13.y;
        x_899 = x_906;
      }
      let x_907 : f32 = x_899;
      hlslcc_movcTemp_1.y = x_907;
      let x_910 : bool = u_xlatb14.z;
      if (x_910) {
        let x_915 : f32 = u_xlat12.z;
        x_911 = x_915;
      } else {
        let x_918 : f32 = u_xlat13.z;
        x_911 = x_918;
      }
      let x_919 : f32 = x_911;
      hlslcc_movcTemp_1.z = x_919;
      let x_921 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat12 = x_921;
      let x_923 : f32 = u_xlat12.y;
      let x_925 : f32 = u_xlat12.x;
      u_xlat49 = min(x_923, x_925);
      let x_928 : f32 = u_xlat12.z;
      let x_929 : f32 = u_xlat49;
      u_xlat49 = min(x_928, x_929);
      let x_931 : vec4<f32> = u_xlat4;
      let x_934 : vec4<f32> = x_33.unity_SpecCube1_ProbePosition;
      let x_937 : vec3<f32> = (vec3<f32>(x_931.x, x_931.y, x_931.z) + -(vec3<f32>(x_934.x, x_934.y, x_934.z)));
      let x_938 : vec4<f32> = u_xlat4;
      u_xlat4 = vec4<f32>(x_937.x, x_937.y, x_937.z, x_938.w);
      let x_940 : vec3<f32> = u_xlat11;
      let x_941 : f32 = u_xlat49;
      let x_944 : vec4<f32> = u_xlat4;
      u_xlat6 = ((x_940 * vec3<f32>(x_941, x_941, x_941)) + vec3<f32>(x_944.x, x_944.y, x_944.z));
    }
    let x_951 : vec3<f32> = u_xlat6;
    let x_952 : f32 = u_xlat47;
    let x_953 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, x_951, x_952);
    u_xlat4 = x_953;
    let x_955 : f32 = u_xlat4.w;
    u_xlat47 = (x_955 + -1.0f);
    let x_959 : f32 = x_33.unity_SpecCube1_HDR.w;
    let x_960 : f32 = u_xlat47;
    u_xlat47 = ((x_959 * x_960) + 1.0f);
    let x_963 : f32 = u_xlat47;
    u_xlat47 = log2(x_963);
    let x_965 : f32 = u_xlat47;
    let x_967 : f32 = x_33.unity_SpecCube1_HDR.y;
    u_xlat47 = (x_965 * x_967);
    let x_969 : f32 = u_xlat47;
    u_xlat47 = exp2(x_969);
    let x_971 : f32 = u_xlat47;
    let x_973 : f32 = x_33.unity_SpecCube1_HDR.x;
    u_xlat47 = (x_971 * x_973);
    let x_975 : vec4<f32> = u_xlat4;
    let x_977 : f32 = u_xlat47;
    let x_979 : vec3<f32> = (vec3<f32>(x_975.x, x_975.y, x_975.z) * vec3<f32>(x_977, x_977, x_977));
    let x_980 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_979.x, x_979.y, x_979.z, x_980.w);
    let x_982 : f32 = u_xlat48;
    let x_984 : vec4<f32> = u_xlat9;
    let x_987 : vec4<f32> = u_xlat4;
    u_xlat6 = ((vec3<f32>(x_982, x_982, x_982) * vec3<f32>(x_984.x, x_984.y, x_984.z)) + -(vec3<f32>(x_987.x, x_987.y, x_987.z)));
    let x_992 : vec4<f32> = x_33.unity_SpecCube0_BoxMin;
    let x_994 : vec3<f32> = u_xlat6;
    let x_996 : vec4<f32> = u_xlat4;
    let x_998 : vec3<f32> = ((vec3<f32>(x_992.w, x_992.w, x_992.w) * x_994) + vec3<f32>(x_996.x, x_996.y, x_996.z));
    let x_999 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_998.x, x_998.y, x_998.z, x_999.w);
  }
  let x_1001 : vec4<f32> = u_xlat5;
  let x_1003 : vec4<f32> = u_xlat10;
  let x_1005 : vec3<f32> = (vec3<f32>(x_1001.x, x_1001.x, x_1001.x) * vec3<f32>(x_1003.x, x_1003.y, x_1003.z));
  let x_1006 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1005.x, x_1005.y, x_1005.z, x_1006.w);
  let x_1008 : vec4<f32> = vs_TEXCOORD1;
  let x_1011 : f32 = u_xlat46;
  let x_1015 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  u_xlat6 = ((-(vec3<f32>(x_1008.x, x_1008.y, x_1008.z)) * vec3<f32>(x_1011, x_1011, x_1011)) + vec3<f32>(x_1015.x, x_1015.y, x_1015.z));
  let x_1018 : vec3<f32> = u_xlat6;
  let x_1019 : vec3<f32> = u_xlat6;
  u_xlat46 = dot(x_1018, x_1019);
  let x_1021 : f32 = u_xlat46;
  u_xlat46 = max(x_1021, 0.001f);
  let x_1024 : f32 = u_xlat46;
  u_xlat46 = inverseSqrt(x_1024);
  let x_1026 : f32 = u_xlat46;
  let x_1028 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_1026, x_1026, x_1026) * x_1028);
  let x_1030 : vec4<f32> = u_xlat2;
  let x_1032 : vec4<f32> = u_xlat3;
  u_xlat46 = dot(vec3<f32>(x_1030.x, x_1030.y, x_1030.z), -(vec3<f32>(x_1032.x, x_1032.y, x_1032.z)));
  let x_1036 : vec4<f32> = u_xlat2;
  let x_1039 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  u_xlat47 = dot(vec3<f32>(x_1036.x, x_1036.y, x_1036.z), vec3<f32>(x_1039.x, x_1039.y, x_1039.z));
  let x_1042 : f32 = u_xlat47;
  u_xlat47 = clamp(x_1042, 0.0f, 1.0f);
  let x_1044 : vec4<f32> = u_xlat2;
  let x_1046 : vec3<f32> = u_xlat6;
  u_xlat2.x = dot(vec3<f32>(x_1044.x, x_1044.y, x_1044.z), x_1046);
  let x_1050 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1050, 0.0f, 1.0f);
  let x_1054 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  let x_1056 : vec3<f32> = u_xlat6;
  u_xlat17.x = dot(vec3<f32>(x_1054.x, x_1054.y, x_1054.z), x_1056);
  let x_1060 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_1060, 0.0f, 1.0f);
  let x_1065 : f32 = u_xlat17.x;
  let x_1067 : f32 = u_xlat17.x;
  u_xlat32 = (x_1065 * x_1067);
  let x_1069 : f32 = u_xlat32;
  let x_1071 : vec3<f32> = u_xlat20;
  u_xlat32 = dot(vec2<f32>(x_1069, x_1069), vec2<f32>(x_1071.x, x_1071.x));
  let x_1074 : f32 = u_xlat32;
  u_xlat32 = (x_1074 + -0.5f);
  let x_1077 : f32 = u_xlat47;
  u_xlat3.x = (-(x_1077) + 1.0f);
  let x_1083 : f32 = u_xlat3.x;
  let x_1085 : f32 = u_xlat3.x;
  u_xlat18 = (x_1083 * x_1085);
  let x_1087 : f32 = u_xlat18;
  let x_1088 : f32 = u_xlat18;
  u_xlat18 = (x_1087 * x_1088);
  let x_1091 : f32 = u_xlat3.x;
  let x_1092 : f32 = u_xlat18;
  u_xlat3.x = (x_1091 * x_1092);
  let x_1095 : f32 = u_xlat32;
  let x_1097 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1095 * x_1097) + 1.0f);
  let x_1101 : f32 = u_xlat46;
  u_xlat18 = (-(abs(x_1101)) + 1.0f);
  let x_1106 : f32 = u_xlat18;
  let x_1107 : f32 = u_xlat18;
  u_xlat33 = (x_1106 * x_1107);
  let x_1109 : f32 = u_xlat33;
  let x_1110 : f32 = u_xlat33;
  u_xlat33 = (x_1109 * x_1110);
  let x_1112 : f32 = u_xlat18;
  let x_1113 : f32 = u_xlat33;
  u_xlat18 = (x_1112 * x_1113);
  let x_1115 : f32 = u_xlat32;
  let x_1116 : f32 = u_xlat18;
  u_xlat32 = ((x_1115 * x_1116) + 1.0f);
  let x_1119 : f32 = u_xlat32;
  let x_1121 : f32 = u_xlat3.x;
  u_xlat32 = (x_1119 * x_1121);
  let x_1123 : f32 = u_xlat47;
  let x_1124 : f32 = u_xlat32;
  u_xlat32 = (x_1123 * x_1124);
  let x_1127 : f32 = u_xlat20.x;
  let x_1129 : f32 = u_xlat20.x;
  u_xlat3.x = (x_1127 * x_1129);
  let x_1133 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_1133, 0.002f);
  let x_1138 : f32 = u_xlat3.x;
  u_xlat33 = (-(x_1138) + 1.0f);
  let x_1141 : f32 = u_xlat46;
  let x_1143 : f32 = u_xlat33;
  let x_1146 : f32 = u_xlat3.x;
  u_xlat48 = ((abs(x_1141) * x_1143) + x_1146);
  let x_1148 : f32 = u_xlat47;
  let x_1149 : f32 = u_xlat33;
  let x_1152 : f32 = u_xlat3.x;
  u_xlat33 = ((x_1148 * x_1149) + x_1152);
  let x_1154 : f32 = u_xlat46;
  let x_1156 : f32 = u_xlat33;
  u_xlat46 = (abs(x_1154) * x_1156);
  let x_1158 : f32 = u_xlat47;
  let x_1159 : f32 = u_xlat48;
  let x_1161 : f32 = u_xlat46;
  u_xlat46 = ((x_1158 * x_1159) + x_1161);
  let x_1163 : f32 = u_xlat46;
  u_xlat46 = (x_1163 + 0.00001f);
  let x_1166 : f32 = u_xlat46;
  u_xlat46 = (0.5f / x_1166);
  let x_1169 : f32 = u_xlat3.x;
  let x_1171 : f32 = u_xlat3.x;
  u_xlat33 = (x_1169 * x_1171);
  let x_1174 : f32 = u_xlat2.x;
  let x_1175 : f32 = u_xlat33;
  let x_1178 : f32 = u_xlat2.x;
  u_xlat48 = ((x_1174 * x_1175) + -(x_1178));
  let x_1181 : f32 = u_xlat48;
  let x_1183 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1181 * x_1183) + 1.0f);
  let x_1187 : f32 = u_xlat33;
  u_xlat33 = (x_1187 * 0.318309873f);
  let x_1191 : f32 = u_xlat2.x;
  let x_1193 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1191 * x_1193) + 0.0000001f);
  let x_1198 : f32 = u_xlat33;
  let x_1200 : f32 = u_xlat2.x;
  u_xlat2.x = (x_1198 / x_1200);
  let x_1203 : f32 = u_xlat46;
  let x_1205 : f32 = u_xlat2.x;
  u_xlat46 = (x_1203 * x_1205);
  let x_1207 : f32 = u_xlat47;
  let x_1208 : f32 = u_xlat46;
  u_xlat46 = (x_1207 * x_1208);
  let x_1210 : f32 = u_xlat46;
  u_xlat46 = (x_1210 * 3.141592741f);
  let x_1213 : f32 = u_xlat46;
  u_xlat46 = max(x_1213, 0.0f);
  let x_1216 : f32 = u_xlat3.x;
  let x_1218 : f32 = u_xlat3.x;
  u_xlat2.x = ((x_1216 * x_1218) + 1.0f);
  let x_1223 : f32 = u_xlat2.x;
  u_xlat2.x = (1.0f / x_1223);
  let x_1226 : vec3<f32> = u_xlat0;
  let x_1227 : vec3<f32> = u_xlat0;
  u_xlat47 = dot(x_1226, x_1227);
  let x_1229 : f32 = u_xlat47;
  u_xlatb47 = !((x_1229 == 0.0f));
  let x_1231 : bool = u_xlatb47;
  u_xlat47 = select(0.0f, 1.0f, x_1231);
  let x_1233 : f32 = u_xlat46;
  let x_1234 : f32 = u_xlat47;
  u_xlat46 = (x_1233 * x_1234);
  let x_1236 : f32 = u_xlat45;
  let x_1239 : f32 = x_33.x_Glossiness;
  u_xlat45 = (-(x_1236) + x_1239);
  let x_1241 : f32 = u_xlat45;
  u_xlat45 = (x_1241 + 1.0f);
  let x_1243 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1243, 0.0f, 1.0f);
  let x_1245 : f32 = u_xlat32;
  let x_1247 : vec3<f32> = u_xlat7;
  let x_1248 : vec3<f32> = (vec3<f32>(x_1245, x_1245, x_1245) * x_1247);
  let x_1249 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1248.x, x_1249.y, x_1248.y, x_1248.z);
  let x_1251 : vec4<f32> = u_xlat8;
  let x_1253 : vec4<f32> = u_xlat5;
  let x_1256 : vec4<f32> = u_xlat3;
  let x_1258 : vec3<f32> = ((vec3<f32>(x_1251.x, x_1251.y, x_1251.z) * vec3<f32>(x_1253.x, x_1253.x, x_1253.x)) + vec3<f32>(x_1256.x, x_1256.z, x_1256.w));
  let x_1259 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1258.x, x_1259.y, x_1258.y, x_1258.z);
  let x_1261 : vec3<f32> = u_xlat7;
  let x_1262 : f32 = u_xlat46;
  let x_1264 : vec3<f32> = (x_1261 * vec3<f32>(x_1262, x_1262, x_1262));
  let x_1265 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1264.x, x_1264.y, x_1264.z, x_1265.w);
  let x_1268 : f32 = u_xlat17.x;
  u_xlat46 = (-(x_1268) + 1.0f);
  let x_1271 : f32 = u_xlat46;
  let x_1272 : f32 = u_xlat46;
  u_xlat17.x = (x_1271 * x_1272);
  let x_1276 : f32 = u_xlat17.x;
  let x_1278 : f32 = u_xlat17.x;
  u_xlat17.x = (x_1276 * x_1278);
  let x_1281 : f32 = u_xlat46;
  let x_1283 : f32 = u_xlat17.x;
  u_xlat46 = (x_1281 * x_1283);
  let x_1285 : vec3<f32> = u_xlat0;
  u_xlat17 = (-(x_1285) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1289 : vec3<f32> = u_xlat17;
  let x_1290 : f32 = u_xlat46;
  let x_1293 : vec3<f32> = u_xlat0;
  u_xlat17 = ((x_1289 * vec3<f32>(x_1290, x_1290, x_1290)) + x_1293);
  let x_1295 : vec3<f32> = u_xlat17;
  let x_1296 : vec4<f32> = u_xlat5;
  u_xlat17 = (x_1295 * vec3<f32>(x_1296.x, x_1296.y, x_1296.z));
  let x_1299 : vec3<f32> = u_xlat1;
  let x_1300 : vec4<f32> = u_xlat3;
  let x_1303 : vec3<f32> = u_xlat17;
  u_xlat1 = ((x_1299 * vec3<f32>(x_1300.x, x_1300.z, x_1300.w)) + x_1303);
  let x_1305 : vec4<f32> = u_xlat4;
  let x_1307 : vec4<f32> = u_xlat2;
  let x_1309 : vec3<f32> = (vec3<f32>(x_1305.x, x_1305.y, x_1305.z) * vec3<f32>(x_1307.x, x_1307.x, x_1307.x));
  let x_1310 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1309.x, x_1309.y, x_1309.z, x_1310.w);
  let x_1312 : vec3<f32> = u_xlat0;
  let x_1314 : f32 = u_xlat45;
  let x_1316 : vec3<f32> = (-(x_1312) + vec3<f32>(x_1314, x_1314, x_1314));
  let x_1317 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1316.x, x_1317.y, x_1316.y, x_1316.z);
  let x_1319 : f32 = u_xlat18;
  let x_1321 : vec4<f32> = u_xlat3;
  let x_1324 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1319, x_1319, x_1319) * vec3<f32>(x_1321.x, x_1321.z, x_1321.w)) + x_1324);
  let x_1328 : vec4<f32> = u_xlat2;
  let x_1330 : vec3<f32> = u_xlat0;
  let x_1332 : vec3<f32> = u_xlat1;
  let x_1333 : vec3<f32> = ((vec3<f32>(x_1328.x, x_1328.y, x_1328.z) * x_1330) + x_1332);
  let x_1334 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1333.x, x_1333.y, x_1333.z, x_1334.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(6) vs_TEXCOORD7_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

