struct PGlobals {
  x_ProjectionParams : vec4<f32>,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_FogParams : vec4<f32>,
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
  padding : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_LightColor0 : vec4<f32>,
  x_Color : vec4<f32>,
  x_BumpScale : f32,
  x_Metallic : f32,
  x_Glossiness : f32,
  x_OcclusionStrength : f32,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_33 : PGlobals;

@group(0) @binding(1) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(5) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(7) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(2) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_OcclusionMap : sampler;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(3) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(4) var unity_SpecCube1 : texture_cube<f32>;

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
  var u_xlatb48 : bool;
  var u_xlatb4 : bool;
  var u_xlat19 : vec3<f32>;
  var u_xlat20 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var x_254 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat34 : f32;
  var u_xlat49 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat23 : vec3<f32>;
  var x_441 : vec3<f32>;
  var u_xlat48 : f32;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlatb47 : bool;
  var u_xlat47 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat11 : vec3<f32>;
  var u_xlatb12 : vec3<bool>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_635 : f32;
  var x_647 : f32;
  var x_659 : f32;
  var u_xlat12 : vec3<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb14 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_824 : f32;
  var x_836 : f32;
  var x_848 : f32;
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
  let x_197 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb48 = (x_197 == 1.0f);
  let x_199 : bool = u_xlatb48;
  if (x_199) {
    let x_205 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb4 = (x_205 == 1.0f);
    let x_208 : vec4<f32> = vs_TEXCOORD3;
    let x_213 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    u_xlat19 = (vec3<f32>(x_208.w, x_208.w, x_208.w) * vec3<f32>(x_213.x, x_213.y, x_213.z));
    let x_218 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_220 : vec4<f32> = vs_TEXCOORD2;
    let x_223 : vec3<f32> = u_xlat19;
    u_xlat19 = ((vec3<f32>(x_218.x, x_218.y, x_218.z) * vec3<f32>(x_220.w, x_220.w, x_220.w)) + x_223);
    let x_227 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_229 : vec4<f32> = vs_TEXCOORD4;
    let x_232 : vec3<f32> = u_xlat19;
    u_xlat19 = ((vec3<f32>(x_227.x, x_227.y, x_227.z) * vec3<f32>(x_229.w, x_229.w, x_229.w)) + x_232);
    let x_234 : vec3<f32> = u_xlat19;
    let x_237 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    u_xlat19 = (x_234 + vec3<f32>(x_237.x, x_237.y, x_237.z));
    let x_244 : f32 = vs_TEXCOORD2.w;
    u_xlat20.x = x_244;
    let x_247 : f32 = vs_TEXCOORD3.w;
    u_xlat20.y = x_247;
    let x_250 : f32 = vs_TEXCOORD4.w;
    u_xlat20.z = x_250;
    let x_253 : bool = u_xlatb4;
    if (x_253) {
      let x_257 : vec3<f32> = u_xlat19;
      x_254 = x_257;
    } else {
      let x_259 : vec3<f32> = u_xlat20;
      x_254 = x_259;
    }
    let x_260 : vec3<f32> = x_254;
    let x_261 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_260.x, x_260.y, x_260.z, x_261.w);
    let x_263 : vec4<f32> = u_xlat4;
    let x_268 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_270 : vec3<f32> = (vec3<f32>(x_263.x, x_263.y, x_263.z) + -(x_268));
    let x_271 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_270.x, x_270.y, x_270.z, x_271.w);
    let x_273 : vec4<f32> = u_xlat4;
    let x_277 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_278 : vec3<f32> = (vec3<f32>(x_273.x, x_273.y, x_273.z) * x_277);
    let x_279 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_279.x, x_278.x, x_278.y, x_278.z);
    let x_282 : f32 = u_xlat4.y;
    u_xlat19.x = ((x_282 * 0.25f) + 0.75f);
    let x_290 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat5.x = ((x_290 * 0.5f) + 0.75f);
    let x_296 : f32 = u_xlat19.x;
    let x_298 : f32 = u_xlat5.x;
    u_xlat4.x = max(x_296, x_298);
    let x_309 : vec4<f32> = u_xlat4;
    let x_311 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_309.x, x_309.z, x_309.w));
    u_xlat4 = x_311;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_317 : vec4<f32> = u_xlat4;
  let x_320 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat4.x = dot(x_317, x_320);
  let x_324 : f32 = u_xlat4.x;
  u_xlat4.x = clamp(x_324, 0.0f, 1.0f);
  let x_333 : vec4<f32> = vs_TEXCOORD0;
  let x_335 : vec4<f32> = textureSample(x_OcclusionMap, sampler_OcclusionMap, vec2<f32>(x_333.x, x_333.y));
  u_xlat19.x = x_335.y;
  let x_341 : f32 = x_33.x_OcclusionStrength;
  u_xlat34 = (-(x_341) + 1.0f);
  let x_345 : f32 = u_xlat19.x;
  let x_347 : f32 = x_33.x_OcclusionStrength;
  let x_349 : f32 = u_xlat34;
  u_xlat19.x = ((x_345 * x_347) + x_349);
  let x_354 : f32 = x_33.x_Glossiness;
  u_xlat34 = (-(x_354) + 1.0f);
  let x_358 : vec4<f32> = u_xlat3;
  let x_360 : vec4<f32> = u_xlat2;
  u_xlat49 = dot(vec3<f32>(x_358.x, x_358.y, x_358.z), vec3<f32>(x_360.x, x_360.y, x_360.z));
  let x_363 : f32 = u_xlat49;
  let x_364 : f32 = u_xlat49;
  u_xlat49 = (x_363 + x_364);
  let x_366 : vec4<f32> = u_xlat2;
  let x_368 : f32 = u_xlat49;
  let x_372 : vec4<f32> = u_xlat3;
  let x_374 : vec3<f32> = ((vec3<f32>(x_366.x, x_366.y, x_366.z) * -(vec3<f32>(x_368, x_368, x_368))) + vec3<f32>(x_372.x, x_372.y, x_372.z));
  let x_375 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_374.x, x_374.y, x_374.z, x_375.w);
  let x_378 : vec4<f32> = u_xlat4;
  let x_382 : vec4<f32> = x_33.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_378.x, x_378.x, x_378.x) * vec3<f32>(x_382.x, x_382.y, x_382.z));
  let x_385 : bool = u_xlatb48;
  if (x_385) {
    let x_389 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb48 = (x_389 == 1.0f);
    let x_392 : vec4<f32> = vs_TEXCOORD3;
    let x_395 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_397 : vec3<f32> = (vec3<f32>(x_392.w, x_392.w, x_392.w) * vec3<f32>(x_395.x, x_395.y, x_395.z));
    let x_398 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_397.x, x_397.y, x_397.z, x_398.w);
    let x_401 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_403 : vec4<f32> = vs_TEXCOORD2;
    let x_406 : vec4<f32> = u_xlat7;
    let x_408 : vec3<f32> = ((vec3<f32>(x_401.x, x_401.y, x_401.z) * vec3<f32>(x_403.w, x_403.w, x_403.w)) + vec3<f32>(x_406.x, x_406.y, x_406.z));
    let x_409 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_408.x, x_408.y, x_408.z, x_409.w);
    let x_412 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_414 : vec4<f32> = vs_TEXCOORD4;
    let x_417 : vec4<f32> = u_xlat7;
    let x_419 : vec3<f32> = ((vec3<f32>(x_412.x, x_412.y, x_412.z) * vec3<f32>(x_414.w, x_414.w, x_414.w)) + vec3<f32>(x_417.x, x_417.y, x_417.z));
    let x_420 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_419.x, x_419.y, x_419.z, x_420.w);
    let x_422 : vec4<f32> = u_xlat7;
    let x_425 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_427 : vec3<f32> = (vec3<f32>(x_422.x, x_422.y, x_422.z) + vec3<f32>(x_425.x, x_425.y, x_425.z));
    let x_428 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_427.x, x_427.y, x_427.z, x_428.w);
    let x_432 : f32 = vs_TEXCOORD2.w;
    u_xlat23.x = x_432;
    let x_435 : f32 = vs_TEXCOORD3.w;
    u_xlat23.y = x_435;
    let x_438 : f32 = vs_TEXCOORD4.w;
    u_xlat23.z = x_438;
    let x_440 : bool = u_xlatb48;
    if (x_440) {
      let x_444 : vec4<f32> = u_xlat7;
      x_441 = vec3<f32>(x_444.x, x_444.y, x_444.z);
    } else {
      let x_447 : vec3<f32> = u_xlat23;
      x_441 = x_447;
    }
    let x_448 : vec3<f32> = x_441;
    let x_449 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_448.x, x_448.y, x_448.z, x_449.w);
    let x_451 : vec4<f32> = u_xlat7;
    let x_454 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_456 : vec3<f32> = (vec3<f32>(x_451.x, x_451.y, x_451.z) + -(x_454));
    let x_457 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_456.x, x_456.y, x_456.z, x_457.w);
    let x_459 : vec4<f32> = u_xlat7;
    let x_462 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_463 : vec3<f32> = (vec3<f32>(x_459.x, x_459.y, x_459.z) * x_462);
    let x_464 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_464.x, x_463.x, x_463.y, x_463.z);
    let x_468 : f32 = u_xlat7.y;
    u_xlat48 = (x_468 * 0.25f);
    let x_471 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat4.x = (x_471 * 0.5f);
    let x_475 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat49 = ((-(x_475) * 0.5f) + 0.25f);
    let x_479 : f32 = u_xlat48;
    let x_481 : f32 = u_xlat4.x;
    u_xlat48 = max(x_479, x_481);
    let x_483 : f32 = u_xlat49;
    let x_484 : f32 = u_xlat48;
    u_xlat7.x = min(x_483, x_484);
    let x_491 : vec4<f32> = u_xlat7;
    let x_493 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_491.x, x_491.z, x_491.w));
    u_xlat8 = x_493;
    let x_495 : vec4<f32> = u_xlat7;
    let x_498 : vec3<f32> = (vec3<f32>(x_495.x, x_495.z, x_495.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_499 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_498.x, x_498.y, x_498.z, x_499.w);
    let x_504 : vec4<f32> = u_xlat9;
    let x_506 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_504.x, x_504.y, x_504.z));
    u_xlat9 = x_506;
    let x_507 : vec4<f32> = u_xlat7;
    let x_510 : vec3<f32> = (vec3<f32>(x_507.x, x_507.z, x_507.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_511 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_510.x, x_510.y, x_510.z, x_511.w);
    let x_516 : vec4<f32> = u_xlat7;
    let x_518 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_516.x, x_516.y, x_516.z));
    u_xlat7 = x_518;
    u_xlat2.w = 1.0f;
    let x_520 : vec4<f32> = u_xlat8;
    let x_521 : vec4<f32> = u_xlat2;
    u_xlat8.x = dot(x_520, x_521);
    let x_524 : vec4<f32> = u_xlat9;
    let x_525 : vec4<f32> = u_xlat2;
    u_xlat8.y = dot(x_524, x_525);
    let x_528 : vec4<f32> = u_xlat7;
    let x_529 : vec4<f32> = u_xlat2;
    u_xlat8.z = dot(x_528, x_529);
  } else {
    u_xlat2.w = 1.0f;
    let x_535 : vec4<f32> = x_33.unity_SHAr;
    let x_536 : vec4<f32> = u_xlat2;
    u_xlat8.x = dot(x_535, x_536);
    let x_540 : vec4<f32> = x_33.unity_SHAg;
    let x_541 : vec4<f32> = u_xlat2;
    u_xlat8.y = dot(x_540, x_541);
    let x_546 : vec4<f32> = x_33.unity_SHAb;
    let x_547 : vec4<f32> = u_xlat2;
    u_xlat8.z = dot(x_546, x_547);
  }
  let x_550 : vec4<f32> = u_xlat8;
  let x_553 : vec4<f32> = vs_TEXCOORD5;
  let x_555 : vec3<f32> = (vec3<f32>(x_550.x, x_550.y, x_550.z) + vec3<f32>(x_553.x, x_553.y, x_553.z));
  let x_556 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_555.x, x_555.y, x_555.z, x_556.w);
  let x_558 : vec4<f32> = u_xlat7;
  let x_561 : vec3<f32> = max(vec3<f32>(x_558.x, x_558.y, x_558.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_562 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_561.x, x_561.y, x_561.z, x_562.w);
  let x_567 : f32 = x_33.unity_SpecCube0_ProbePosition.w;
  u_xlatb47 = (0.0f < x_567);
  let x_569 : bool = u_xlatb47;
  if (x_569) {
    let x_573 : vec4<f32> = u_xlat5;
    let x_575 : vec4<f32> = u_xlat5;
    u_xlat47 = dot(vec3<f32>(x_573.x, x_573.y, x_573.z), vec3<f32>(x_575.x, x_575.y, x_575.z));
    let x_578 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_578);
    let x_580 : f32 = u_xlat47;
    let x_582 : vec4<f32> = u_xlat5;
    let x_584 : vec3<f32> = (vec3<f32>(x_580, x_580, x_580) * vec3<f32>(x_582.x, x_582.y, x_582.z));
    let x_585 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_584.x, x_584.y, x_584.z, x_585.w);
    let x_588 : f32 = vs_TEXCOORD2.w;
    u_xlat9.x = x_588;
    let x_591 : f32 = vs_TEXCOORD3.w;
    u_xlat9.y = x_591;
    let x_594 : f32 = vs_TEXCOORD4.w;
    u_xlat9.z = x_594;
    let x_597 : vec4<f32> = u_xlat9;
    let x_602 : vec4<f32> = x_33.unity_SpecCube0_BoxMax;
    u_xlat10 = (-(vec3<f32>(x_597.x, x_597.y, x_597.z)) + vec3<f32>(x_602.x, x_602.y, x_602.z));
    let x_605 : vec3<f32> = u_xlat10;
    let x_606 : vec4<f32> = u_xlat8;
    u_xlat10 = (x_605 / vec3<f32>(x_606.x, x_606.y, x_606.z));
    let x_610 : vec4<f32> = u_xlat9;
    let x_615 : vec4<f32> = x_33.unity_SpecCube0_BoxMin;
    u_xlat11 = (-(vec3<f32>(x_610.x, x_610.y, x_610.z)) + vec3<f32>(x_615.x, x_615.y, x_615.z));
    let x_618 : vec3<f32> = u_xlat11;
    let x_619 : vec4<f32> = u_xlat8;
    u_xlat11 = (x_618 / vec3<f32>(x_619.x, x_619.y, x_619.z));
    let x_626 : vec4<f32> = u_xlat8;
    let x_629 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_626.x, x_626.y, x_626.z, x_626.x));
    u_xlatb12 = vec3<bool>(x_629.x, x_629.y, x_629.z);
    let x_632 : vec3<f32> = u_xlat10;
    hlslcc_movcTemp = x_632;
    let x_634 : bool = u_xlatb12.x;
    if (x_634) {
      let x_639 : f32 = u_xlat10.x;
      x_635 = x_639;
    } else {
      let x_642 : f32 = u_xlat11.x;
      x_635 = x_642;
    }
    let x_643 : f32 = x_635;
    hlslcc_movcTemp.x = x_643;
    let x_646 : bool = u_xlatb12.y;
    if (x_646) {
      let x_651 : f32 = u_xlat10.y;
      x_647 = x_651;
    } else {
      let x_654 : f32 = u_xlat11.y;
      x_647 = x_654;
    }
    let x_655 : f32 = x_647;
    hlslcc_movcTemp.y = x_655;
    let x_658 : bool = u_xlatb12.z;
    if (x_658) {
      let x_663 : f32 = u_xlat10.z;
      x_659 = x_663;
    } else {
      let x_666 : f32 = u_xlat11.z;
      x_659 = x_666;
    }
    let x_667 : f32 = x_659;
    hlslcc_movcTemp.z = x_667;
    let x_669 : vec3<f32> = hlslcc_movcTemp;
    u_xlat10 = x_669;
    let x_671 : f32 = u_xlat10.y;
    let x_673 : f32 = u_xlat10.x;
    u_xlat47 = min(x_671, x_673);
    let x_676 : f32 = u_xlat10.z;
    let x_677 : f32 = u_xlat47;
    u_xlat47 = min(x_676, x_677);
    let x_679 : vec4<f32> = u_xlat9;
    let x_682 : vec4<f32> = x_33.unity_SpecCube0_ProbePosition;
    let x_685 : vec3<f32> = (vec3<f32>(x_679.x, x_679.y, x_679.z) + -(vec3<f32>(x_682.x, x_682.y, x_682.z)));
    let x_686 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_685.x, x_685.y, x_685.z, x_686.w);
    let x_688 : vec4<f32> = u_xlat8;
    let x_690 : f32 = u_xlat47;
    let x_693 : vec4<f32> = u_xlat9;
    let x_695 : vec3<f32> = ((vec3<f32>(x_688.x, x_688.y, x_688.z) * vec3<f32>(x_690, x_690, x_690)) + vec3<f32>(x_693.x, x_693.y, x_693.z));
    let x_696 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_695.x, x_695.y, x_695.z, x_696.w);
  } else {
    let x_699 : vec4<f32> = u_xlat5;
    let x_700 : vec3<f32> = vec3<f32>(x_699.x, x_699.y, x_699.z);
    let x_701 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_700.x, x_700.y, x_700.z, x_701.w);
  }
  let x_703 : f32 = u_xlat34;
  u_xlat47 = ((-(x_703) * 0.699999988f) + 1.700000048f);
  let x_709 : f32 = u_xlat47;
  let x_710 : f32 = u_xlat34;
  u_xlat47 = (x_709 * x_710);
  let x_712 : f32 = u_xlat47;
  u_xlat47 = (x_712 * 6.0f);
  let x_723 : vec4<f32> = u_xlat8;
  let x_725 : f32 = u_xlat47;
  let x_726 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_723.x, x_723.y, x_723.z), x_725);
  u_xlat8 = x_726;
  let x_728 : f32 = u_xlat8.w;
  u_xlat48 = (x_728 + -1.0f);
  let x_732 : f32 = x_33.unity_SpecCube0_HDR.w;
  let x_733 : f32 = u_xlat48;
  u_xlat48 = ((x_732 * x_733) + 1.0f);
  let x_736 : f32 = u_xlat48;
  u_xlat48 = log2(x_736);
  let x_738 : f32 = u_xlat48;
  let x_740 : f32 = x_33.unity_SpecCube0_HDR.y;
  u_xlat48 = (x_738 * x_740);
  let x_742 : f32 = u_xlat48;
  u_xlat48 = exp2(x_742);
  let x_744 : f32 = u_xlat48;
  let x_746 : f32 = x_33.unity_SpecCube0_HDR.x;
  u_xlat48 = (x_744 * x_746);
  let x_748 : vec4<f32> = u_xlat8;
  let x_750 : f32 = u_xlat48;
  let x_752 : vec3<f32> = (vec3<f32>(x_748.x, x_748.y, x_748.z) * vec3<f32>(x_750, x_750, x_750));
  let x_753 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_752.x, x_752.y, x_752.z, x_753.w);
  let x_756 : f32 = x_33.unity_SpecCube0_BoxMin.w;
  u_xlatb4 = (x_756 < 0.999989986f);
  let x_759 : bool = u_xlatb4;
  if (x_759) {
    let x_764 : f32 = x_33.unity_SpecCube1_ProbePosition.w;
    u_xlatb4 = (0.0f < x_764);
    let x_766 : bool = u_xlatb4;
    if (x_766) {
      let x_769 : vec4<f32> = u_xlat5;
      let x_771 : vec4<f32> = u_xlat5;
      u_xlat4.x = dot(vec3<f32>(x_769.x, x_769.y, x_769.z), vec3<f32>(x_771.x, x_771.y, x_771.z));
      let x_776 : f32 = u_xlat4.x;
      u_xlat4.x = inverseSqrt(x_776);
      let x_779 : vec4<f32> = u_xlat4;
      let x_781 : vec4<f32> = u_xlat5;
      u_xlat10 = (vec3<f32>(x_779.x, x_779.x, x_779.x) * vec3<f32>(x_781.x, x_781.y, x_781.z));
      let x_785 : f32 = vs_TEXCOORD2.w;
      u_xlat11.x = x_785;
      let x_788 : f32 = vs_TEXCOORD3.w;
      u_xlat11.y = x_788;
      let x_791 : f32 = vs_TEXCOORD4.w;
      u_xlat11.z = x_791;
      let x_794 : vec3<f32> = u_xlat11;
      let x_798 : vec4<f32> = x_33.unity_SpecCube1_BoxMax;
      u_xlat12 = (-(x_794) + vec3<f32>(x_798.x, x_798.y, x_798.z));
      let x_801 : vec3<f32> = u_xlat12;
      let x_802 : vec3<f32> = u_xlat10;
      u_xlat12 = (x_801 / x_802);
      let x_805 : vec3<f32> = u_xlat11;
      let x_809 : vec4<f32> = x_33.unity_SpecCube1_BoxMin;
      u_xlat13 = (-(x_805) + vec3<f32>(x_809.x, x_809.y, x_809.z));
      let x_812 : vec3<f32> = u_xlat13;
      let x_813 : vec3<f32> = u_xlat10;
      u_xlat13 = (x_812 / x_813);
      let x_816 : vec3<f32> = u_xlat10;
      let x_818 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_816.x, x_816.y, x_816.z, x_816.x));
      u_xlatb14 = vec3<bool>(x_818.x, x_818.y, x_818.z);
      let x_821 : vec3<f32> = u_xlat12;
      hlslcc_movcTemp_1 = x_821;
      let x_823 : bool = u_xlatb14.x;
      if (x_823) {
        let x_828 : f32 = u_xlat12.x;
        x_824 = x_828;
      } else {
        let x_831 : f32 = u_xlat13.x;
        x_824 = x_831;
      }
      let x_832 : f32 = x_824;
      hlslcc_movcTemp_1.x = x_832;
      let x_835 : bool = u_xlatb14.y;
      if (x_835) {
        let x_840 : f32 = u_xlat12.y;
        x_836 = x_840;
      } else {
        let x_843 : f32 = u_xlat13.y;
        x_836 = x_843;
      }
      let x_844 : f32 = x_836;
      hlslcc_movcTemp_1.y = x_844;
      let x_847 : bool = u_xlatb14.z;
      if (x_847) {
        let x_852 : f32 = u_xlat12.z;
        x_848 = x_852;
      } else {
        let x_855 : f32 = u_xlat13.z;
        x_848 = x_855;
      }
      let x_856 : f32 = x_848;
      hlslcc_movcTemp_1.z = x_856;
      let x_858 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat12 = x_858;
      let x_860 : f32 = u_xlat12.y;
      let x_862 : f32 = u_xlat12.x;
      u_xlat4.x = min(x_860, x_862);
      let x_866 : f32 = u_xlat12.z;
      let x_868 : f32 = u_xlat4.x;
      u_xlat4.x = min(x_866, x_868);
      let x_871 : vec3<f32> = u_xlat11;
      let x_873 : vec4<f32> = x_33.unity_SpecCube1_ProbePosition;
      u_xlat11 = (x_871 + -(vec3<f32>(x_873.x, x_873.y, x_873.z)));
      let x_877 : vec3<f32> = u_xlat10;
      let x_878 : vec4<f32> = u_xlat4;
      let x_881 : vec3<f32> = u_xlat11;
      let x_882 : vec3<f32> = ((x_877 * vec3<f32>(x_878.x, x_878.x, x_878.x)) + x_881);
      let x_883 : vec4<f32> = u_xlat5;
      u_xlat5 = vec4<f32>(x_882.x, x_882.y, x_882.z, x_883.w);
    }
    let x_889 : vec4<f32> = u_xlat5;
    let x_891 : f32 = u_xlat47;
    let x_892 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_889.x, x_889.y, x_889.z), x_891);
    u_xlat5 = x_892;
    let x_894 : f32 = u_xlat5.w;
    u_xlat47 = (x_894 + -1.0f);
    let x_898 : f32 = x_33.unity_SpecCube1_HDR.w;
    let x_899 : f32 = u_xlat47;
    u_xlat47 = ((x_898 * x_899) + 1.0f);
    let x_902 : f32 = u_xlat47;
    u_xlat47 = log2(x_902);
    let x_904 : f32 = u_xlat47;
    let x_906 : f32 = x_33.unity_SpecCube1_HDR.y;
    u_xlat47 = (x_904 * x_906);
    let x_908 : f32 = u_xlat47;
    u_xlat47 = exp2(x_908);
    let x_910 : f32 = u_xlat47;
    let x_912 : f32 = x_33.unity_SpecCube1_HDR.x;
    u_xlat47 = (x_910 * x_912);
    let x_914 : vec4<f32> = u_xlat5;
    let x_916 : f32 = u_xlat47;
    let x_918 : vec3<f32> = (vec3<f32>(x_914.x, x_914.y, x_914.z) * vec3<f32>(x_916, x_916, x_916));
    let x_919 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_918.x, x_918.y, x_918.z, x_919.w);
    let x_921 : f32 = u_xlat48;
    let x_923 : vec4<f32> = u_xlat8;
    let x_926 : vec4<f32> = u_xlat5;
    let x_929 : vec3<f32> = ((vec3<f32>(x_921, x_921, x_921) * vec3<f32>(x_923.x, x_923.y, x_923.z)) + -(vec3<f32>(x_926.x, x_926.y, x_926.z)));
    let x_930 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_929.x, x_929.y, x_929.z, x_930.w);
    let x_933 : vec4<f32> = x_33.unity_SpecCube0_BoxMin;
    let x_935 : vec4<f32> = u_xlat8;
    let x_938 : vec4<f32> = u_xlat5;
    let x_940 : vec3<f32> = ((vec3<f32>(x_933.w, x_933.w, x_933.w) * vec3<f32>(x_935.x, x_935.y, x_935.z)) + vec3<f32>(x_938.x, x_938.y, x_938.z));
    let x_941 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_940.x, x_940.y, x_940.z, x_941.w);
  }
  let x_943 : vec3<f32> = u_xlat19;
  let x_945 : vec4<f32> = u_xlat9;
  let x_947 : vec3<f32> = (vec3<f32>(x_943.x, x_943.x, x_943.x) * vec3<f32>(x_945.x, x_945.y, x_945.z));
  let x_948 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_947.x, x_947.y, x_947.z, x_948.w);
  let x_950 : vec4<f32> = vs_TEXCOORD1;
  let x_953 : f32 = u_xlat46;
  let x_957 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  let x_959 : vec3<f32> = ((-(vec3<f32>(x_950.x, x_950.y, x_950.z)) * vec3<f32>(x_953, x_953, x_953)) + vec3<f32>(x_957.x, x_957.y, x_957.z));
  let x_960 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_959.x, x_959.y, x_959.z, x_960.w);
  let x_962 : vec4<f32> = u_xlat8;
  let x_964 : vec4<f32> = u_xlat8;
  u_xlat46 = dot(vec3<f32>(x_962.x, x_962.y, x_962.z), vec3<f32>(x_964.x, x_964.y, x_964.z));
  let x_967 : f32 = u_xlat46;
  u_xlat46 = max(x_967, 0.001f);
  let x_970 : f32 = u_xlat46;
  u_xlat46 = inverseSqrt(x_970);
  let x_972 : f32 = u_xlat46;
  let x_974 : vec4<f32> = u_xlat8;
  let x_976 : vec3<f32> = (vec3<f32>(x_972, x_972, x_972) * vec3<f32>(x_974.x, x_974.y, x_974.z));
  let x_977 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_976.x, x_976.y, x_976.z, x_977.w);
  let x_979 : vec4<f32> = u_xlat2;
  let x_981 : vec4<f32> = u_xlat3;
  u_xlat46 = dot(vec3<f32>(x_979.x, x_979.y, x_979.z), -(vec3<f32>(x_981.x, x_981.y, x_981.z)));
  let x_985 : vec4<f32> = u_xlat2;
  let x_988 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  u_xlat47 = dot(vec3<f32>(x_985.x, x_985.y, x_985.z), vec3<f32>(x_988.x, x_988.y, x_988.z));
  let x_991 : f32 = u_xlat47;
  u_xlat47 = clamp(x_991, 0.0f, 1.0f);
  let x_993 : vec4<f32> = u_xlat2;
  let x_995 : vec4<f32> = u_xlat8;
  u_xlat2.x = dot(vec3<f32>(x_993.x, x_993.y, x_993.z), vec3<f32>(x_995.x, x_995.y, x_995.z));
  let x_1000 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1000, 0.0f, 1.0f);
  let x_1004 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  let x_1006 : vec4<f32> = u_xlat8;
  u_xlat17.x = dot(vec3<f32>(x_1004.x, x_1004.y, x_1004.z), vec3<f32>(x_1006.x, x_1006.y, x_1006.z));
  let x_1011 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_1011, 0.0f, 1.0f);
  let x_1016 : f32 = u_xlat17.x;
  let x_1018 : f32 = u_xlat17.x;
  u_xlat32 = (x_1016 * x_1018);
  let x_1020 : f32 = u_xlat32;
  let x_1022 : f32 = u_xlat34;
  u_xlat32 = dot(vec2<f32>(x_1020, x_1020), vec2<f32>(x_1022, x_1022));
  let x_1025 : f32 = u_xlat32;
  u_xlat32 = (x_1025 + -0.5f);
  let x_1028 : f32 = u_xlat47;
  u_xlat3.x = (-(x_1028) + 1.0f);
  let x_1034 : f32 = u_xlat3.x;
  let x_1036 : f32 = u_xlat3.x;
  u_xlat18 = (x_1034 * x_1036);
  let x_1038 : f32 = u_xlat18;
  let x_1039 : f32 = u_xlat18;
  u_xlat18 = (x_1038 * x_1039);
  let x_1042 : f32 = u_xlat3.x;
  let x_1043 : f32 = u_xlat18;
  u_xlat3.x = (x_1042 * x_1043);
  let x_1046 : f32 = u_xlat32;
  let x_1048 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1046 * x_1048) + 1.0f);
  let x_1052 : f32 = u_xlat46;
  u_xlat18 = (-(abs(x_1052)) + 1.0f);
  let x_1057 : f32 = u_xlat18;
  let x_1058 : f32 = u_xlat18;
  u_xlat33 = (x_1057 * x_1058);
  let x_1060 : f32 = u_xlat33;
  let x_1061 : f32 = u_xlat33;
  u_xlat33 = (x_1060 * x_1061);
  let x_1063 : f32 = u_xlat18;
  let x_1064 : f32 = u_xlat33;
  u_xlat18 = (x_1063 * x_1064);
  let x_1066 : f32 = u_xlat32;
  let x_1067 : f32 = u_xlat18;
  u_xlat32 = ((x_1066 * x_1067) + 1.0f);
  let x_1070 : f32 = u_xlat32;
  let x_1072 : f32 = u_xlat3.x;
  u_xlat32 = (x_1070 * x_1072);
  let x_1074 : f32 = u_xlat47;
  let x_1075 : f32 = u_xlat32;
  u_xlat32 = (x_1074 * x_1075);
  let x_1077 : f32 = u_xlat34;
  let x_1078 : f32 = u_xlat34;
  u_xlat3.x = (x_1077 * x_1078);
  let x_1082 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_1082, 0.002f);
  let x_1087 : f32 = u_xlat3.x;
  u_xlat33 = (-(x_1087) + 1.0f);
  let x_1090 : f32 = u_xlat46;
  let x_1092 : f32 = u_xlat33;
  let x_1095 : f32 = u_xlat3.x;
  u_xlat48 = ((abs(x_1090) * x_1092) + x_1095);
  let x_1097 : f32 = u_xlat47;
  let x_1098 : f32 = u_xlat33;
  let x_1101 : f32 = u_xlat3.x;
  u_xlat33 = ((x_1097 * x_1098) + x_1101);
  let x_1103 : f32 = u_xlat46;
  let x_1105 : f32 = u_xlat33;
  u_xlat46 = (abs(x_1103) * x_1105);
  let x_1107 : f32 = u_xlat47;
  let x_1108 : f32 = u_xlat48;
  let x_1110 : f32 = u_xlat46;
  u_xlat46 = ((x_1107 * x_1108) + x_1110);
  let x_1112 : f32 = u_xlat46;
  u_xlat46 = (x_1112 + 0.00001f);
  let x_1115 : f32 = u_xlat46;
  u_xlat46 = (0.5f / x_1115);
  let x_1118 : f32 = u_xlat3.x;
  let x_1120 : f32 = u_xlat3.x;
  u_xlat33 = (x_1118 * x_1120);
  let x_1123 : f32 = u_xlat2.x;
  let x_1124 : f32 = u_xlat33;
  let x_1127 : f32 = u_xlat2.x;
  u_xlat48 = ((x_1123 * x_1124) + -(x_1127));
  let x_1130 : f32 = u_xlat48;
  let x_1132 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1130 * x_1132) + 1.0f);
  let x_1136 : f32 = u_xlat33;
  u_xlat33 = (x_1136 * 0.318309873f);
  let x_1140 : f32 = u_xlat2.x;
  let x_1142 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1140 * x_1142) + 0.0000001f);
  let x_1147 : f32 = u_xlat33;
  let x_1149 : f32 = u_xlat2.x;
  u_xlat2.x = (x_1147 / x_1149);
  let x_1152 : f32 = u_xlat46;
  let x_1154 : f32 = u_xlat2.x;
  u_xlat46 = (x_1152 * x_1154);
  let x_1156 : f32 = u_xlat47;
  let x_1157 : f32 = u_xlat46;
  u_xlat46 = (x_1156 * x_1157);
  let x_1159 : f32 = u_xlat46;
  u_xlat46 = (x_1159 * 3.141592741f);
  let x_1162 : f32 = u_xlat46;
  u_xlat46 = max(x_1162, 0.0f);
  let x_1165 : f32 = u_xlat3.x;
  let x_1167 : f32 = u_xlat3.x;
  u_xlat2.x = ((x_1165 * x_1167) + 1.0f);
  let x_1172 : f32 = u_xlat2.x;
  u_xlat2.x = (1.0f / x_1172);
  let x_1175 : vec3<f32> = u_xlat0;
  let x_1176 : vec3<f32> = u_xlat0;
  u_xlat47 = dot(x_1175, x_1176);
  let x_1178 : f32 = u_xlat47;
  u_xlatb47 = !((x_1178 == 0.0f));
  let x_1180 : bool = u_xlatb47;
  u_xlat47 = select(0.0f, 1.0f, x_1180);
  let x_1182 : f32 = u_xlat46;
  let x_1183 : f32 = u_xlat47;
  u_xlat46 = (x_1182 * x_1183);
  let x_1185 : f32 = u_xlat45;
  let x_1188 : f32 = x_33.x_Glossiness;
  u_xlat45 = (-(x_1185) + x_1188);
  let x_1190 : f32 = u_xlat45;
  u_xlat45 = (x_1190 + 1.0f);
  let x_1192 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1192, 0.0f, 1.0f);
  let x_1194 : f32 = u_xlat32;
  let x_1196 : vec3<f32> = u_xlat6;
  let x_1197 : vec3<f32> = (vec3<f32>(x_1194, x_1194, x_1194) * x_1196);
  let x_1198 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1197.x, x_1198.y, x_1197.y, x_1197.z);
  let x_1200 : vec4<f32> = u_xlat7;
  let x_1202 : vec3<f32> = u_xlat19;
  let x_1205 : vec4<f32> = u_xlat3;
  let x_1207 : vec3<f32> = ((vec3<f32>(x_1200.x, x_1200.y, x_1200.z) * vec3<f32>(x_1202.x, x_1202.x, x_1202.x)) + vec3<f32>(x_1205.x, x_1205.z, x_1205.w));
  let x_1208 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1207.x, x_1208.y, x_1207.y, x_1207.z);
  let x_1210 : vec3<f32> = u_xlat6;
  let x_1211 : f32 = u_xlat46;
  let x_1213 : vec3<f32> = (x_1210 * vec3<f32>(x_1211, x_1211, x_1211));
  let x_1214 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1213.x, x_1213.y, x_1213.z, x_1214.w);
  let x_1217 : f32 = u_xlat17.x;
  u_xlat46 = (-(x_1217) + 1.0f);
  let x_1220 : f32 = u_xlat46;
  let x_1221 : f32 = u_xlat46;
  u_xlat17.x = (x_1220 * x_1221);
  let x_1225 : f32 = u_xlat17.x;
  let x_1227 : f32 = u_xlat17.x;
  u_xlat17.x = (x_1225 * x_1227);
  let x_1230 : f32 = u_xlat46;
  let x_1232 : f32 = u_xlat17.x;
  u_xlat46 = (x_1230 * x_1232);
  let x_1234 : vec3<f32> = u_xlat0;
  u_xlat17 = (-(x_1234) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1238 : vec3<f32> = u_xlat17;
  let x_1239 : f32 = u_xlat46;
  let x_1242 : vec3<f32> = u_xlat0;
  u_xlat17 = ((x_1238 * vec3<f32>(x_1239, x_1239, x_1239)) + x_1242);
  let x_1244 : vec3<f32> = u_xlat17;
  let x_1245 : vec4<f32> = u_xlat4;
  u_xlat17 = (x_1244 * vec3<f32>(x_1245.x, x_1245.y, x_1245.z));
  let x_1248 : vec3<f32> = u_xlat1;
  let x_1249 : vec4<f32> = u_xlat3;
  let x_1252 : vec3<f32> = u_xlat17;
  u_xlat1 = ((x_1248 * vec3<f32>(x_1249.x, x_1249.z, x_1249.w)) + x_1252);
  let x_1254 : vec4<f32> = u_xlat5;
  let x_1256 : vec4<f32> = u_xlat2;
  let x_1258 : vec3<f32> = (vec3<f32>(x_1254.x, x_1254.y, x_1254.z) * vec3<f32>(x_1256.x, x_1256.x, x_1256.x));
  let x_1259 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1258.x, x_1258.y, x_1258.z, x_1259.w);
  let x_1261 : vec3<f32> = u_xlat0;
  let x_1263 : f32 = u_xlat45;
  let x_1265 : vec3<f32> = (-(x_1261) + vec3<f32>(x_1263, x_1263, x_1263));
  let x_1266 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1265.x, x_1266.y, x_1265.y, x_1265.z);
  let x_1268 : f32 = u_xlat18;
  let x_1270 : vec4<f32> = u_xlat3;
  let x_1273 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1268, x_1268, x_1268) * vec3<f32>(x_1270.x, x_1270.z, x_1270.w)) + x_1273);
  let x_1275 : vec4<f32> = u_xlat2;
  let x_1277 : vec3<f32> = u_xlat0;
  let x_1279 : vec3<f32> = u_xlat1;
  u_xlat0 = ((vec3<f32>(x_1275.x, x_1275.y, x_1275.z) * x_1277) + x_1279);
  let x_1282 : f32 = vs_TEXCOORD1.w;
  let x_1284 : f32 = x_33.x_ProjectionParams.y;
  u_xlat45 = (x_1282 / x_1284);
  let x_1286 : f32 = u_xlat45;
  u_xlat45 = (-(x_1286) + 1.0f);
  let x_1289 : f32 = u_xlat45;
  let x_1291 : f32 = x_33.x_ProjectionParams.z;
  u_xlat45 = (x_1289 * x_1291);
  let x_1293 : f32 = u_xlat45;
  u_xlat45 = max(x_1293, 0.0f);
  let x_1295 : f32 = u_xlat45;
  let x_1298 : f32 = x_33.unity_FogParams.x;
  u_xlat45 = (x_1295 * x_1298);
  let x_1300 : f32 = u_xlat45;
  let x_1301 : f32 = u_xlat45;
  u_xlat45 = (x_1300 * -(x_1301));
  let x_1304 : f32 = u_xlat45;
  u_xlat45 = exp2(x_1304);
  let x_1306 : vec3<f32> = u_xlat0;
  let x_1309 : vec4<f32> = x_33.unity_FogColor;
  u_xlat0 = (x_1306 + -(vec3<f32>(x_1309.x, x_1309.y, x_1309.z)));
  let x_1315 : f32 = u_xlat45;
  let x_1317 : vec3<f32> = u_xlat0;
  let x_1320 : vec4<f32> = x_33.unity_FogColor;
  let x_1322 : vec3<f32> = ((vec3<f32>(x_1315, x_1315, x_1315) * x_1317) + vec3<f32>(x_1320.x, x_1320.y, x_1320.z));
  let x_1323 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1322.x, x_1322.y, x_1322.z, x_1323.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
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

