struct PGlobals {
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
  var x_634 : f32;
  var x_646 : f32;
  var x_658 : f32;
  var u_xlat12 : vec3<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb14 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_823 : f32;
  var x_835 : f32;
  var x_847 : f32;
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
    let x_545 : vec4<f32> = x_33.unity_SHAb;
    let x_546 : vec4<f32> = u_xlat2;
    u_xlat8.z = dot(x_545, x_546);
  }
  let x_549 : vec4<f32> = u_xlat8;
  let x_552 : vec4<f32> = vs_TEXCOORD5;
  let x_554 : vec3<f32> = (vec3<f32>(x_549.x, x_549.y, x_549.z) + vec3<f32>(x_552.x, x_552.y, x_552.z));
  let x_555 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_554.x, x_554.y, x_554.z, x_555.w);
  let x_557 : vec4<f32> = u_xlat7;
  let x_560 : vec3<f32> = max(vec3<f32>(x_557.x, x_557.y, x_557.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_561 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_560.x, x_560.y, x_560.z, x_561.w);
  let x_566 : f32 = x_33.unity_SpecCube0_ProbePosition.w;
  u_xlatb47 = (0.0f < x_566);
  let x_568 : bool = u_xlatb47;
  if (x_568) {
    let x_572 : vec4<f32> = u_xlat5;
    let x_574 : vec4<f32> = u_xlat5;
    u_xlat47 = dot(vec3<f32>(x_572.x, x_572.y, x_572.z), vec3<f32>(x_574.x, x_574.y, x_574.z));
    let x_577 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_577);
    let x_579 : f32 = u_xlat47;
    let x_581 : vec4<f32> = u_xlat5;
    let x_583 : vec3<f32> = (vec3<f32>(x_579, x_579, x_579) * vec3<f32>(x_581.x, x_581.y, x_581.z));
    let x_584 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_583.x, x_583.y, x_583.z, x_584.w);
    let x_587 : f32 = vs_TEXCOORD2.w;
    u_xlat9.x = x_587;
    let x_590 : f32 = vs_TEXCOORD3.w;
    u_xlat9.y = x_590;
    let x_593 : f32 = vs_TEXCOORD4.w;
    u_xlat9.z = x_593;
    let x_596 : vec4<f32> = u_xlat9;
    let x_601 : vec4<f32> = x_33.unity_SpecCube0_BoxMax;
    u_xlat10 = (-(vec3<f32>(x_596.x, x_596.y, x_596.z)) + vec3<f32>(x_601.x, x_601.y, x_601.z));
    let x_604 : vec3<f32> = u_xlat10;
    let x_605 : vec4<f32> = u_xlat8;
    u_xlat10 = (x_604 / vec3<f32>(x_605.x, x_605.y, x_605.z));
    let x_609 : vec4<f32> = u_xlat9;
    let x_614 : vec4<f32> = x_33.unity_SpecCube0_BoxMin;
    u_xlat11 = (-(vec3<f32>(x_609.x, x_609.y, x_609.z)) + vec3<f32>(x_614.x, x_614.y, x_614.z));
    let x_617 : vec3<f32> = u_xlat11;
    let x_618 : vec4<f32> = u_xlat8;
    u_xlat11 = (x_617 / vec3<f32>(x_618.x, x_618.y, x_618.z));
    let x_625 : vec4<f32> = u_xlat8;
    let x_628 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_625.x, x_625.y, x_625.z, x_625.x));
    u_xlatb12 = vec3<bool>(x_628.x, x_628.y, x_628.z);
    let x_631 : vec3<f32> = u_xlat10;
    hlslcc_movcTemp = x_631;
    let x_633 : bool = u_xlatb12.x;
    if (x_633) {
      let x_638 : f32 = u_xlat10.x;
      x_634 = x_638;
    } else {
      let x_641 : f32 = u_xlat11.x;
      x_634 = x_641;
    }
    let x_642 : f32 = x_634;
    hlslcc_movcTemp.x = x_642;
    let x_645 : bool = u_xlatb12.y;
    if (x_645) {
      let x_650 : f32 = u_xlat10.y;
      x_646 = x_650;
    } else {
      let x_653 : f32 = u_xlat11.y;
      x_646 = x_653;
    }
    let x_654 : f32 = x_646;
    hlslcc_movcTemp.y = x_654;
    let x_657 : bool = u_xlatb12.z;
    if (x_657) {
      let x_662 : f32 = u_xlat10.z;
      x_658 = x_662;
    } else {
      let x_665 : f32 = u_xlat11.z;
      x_658 = x_665;
    }
    let x_666 : f32 = x_658;
    hlslcc_movcTemp.z = x_666;
    let x_668 : vec3<f32> = hlslcc_movcTemp;
    u_xlat10 = x_668;
    let x_670 : f32 = u_xlat10.y;
    let x_672 : f32 = u_xlat10.x;
    u_xlat47 = min(x_670, x_672);
    let x_675 : f32 = u_xlat10.z;
    let x_676 : f32 = u_xlat47;
    u_xlat47 = min(x_675, x_676);
    let x_678 : vec4<f32> = u_xlat9;
    let x_681 : vec4<f32> = x_33.unity_SpecCube0_ProbePosition;
    let x_684 : vec3<f32> = (vec3<f32>(x_678.x, x_678.y, x_678.z) + -(vec3<f32>(x_681.x, x_681.y, x_681.z)));
    let x_685 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_684.x, x_684.y, x_684.z, x_685.w);
    let x_687 : vec4<f32> = u_xlat8;
    let x_689 : f32 = u_xlat47;
    let x_692 : vec4<f32> = u_xlat9;
    let x_694 : vec3<f32> = ((vec3<f32>(x_687.x, x_687.y, x_687.z) * vec3<f32>(x_689, x_689, x_689)) + vec3<f32>(x_692.x, x_692.y, x_692.z));
    let x_695 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_694.x, x_694.y, x_694.z, x_695.w);
  } else {
    let x_698 : vec4<f32> = u_xlat5;
    let x_699 : vec3<f32> = vec3<f32>(x_698.x, x_698.y, x_698.z);
    let x_700 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_699.x, x_699.y, x_699.z, x_700.w);
  }
  let x_702 : f32 = u_xlat34;
  u_xlat47 = ((-(x_702) * 0.699999988f) + 1.700000048f);
  let x_708 : f32 = u_xlat47;
  let x_709 : f32 = u_xlat34;
  u_xlat47 = (x_708 * x_709);
  let x_711 : f32 = u_xlat47;
  u_xlat47 = (x_711 * 6.0f);
  let x_722 : vec4<f32> = u_xlat8;
  let x_724 : f32 = u_xlat47;
  let x_725 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_722.x, x_722.y, x_722.z), x_724);
  u_xlat8 = x_725;
  let x_727 : f32 = u_xlat8.w;
  u_xlat48 = (x_727 + -1.0f);
  let x_731 : f32 = x_33.unity_SpecCube0_HDR.w;
  let x_732 : f32 = u_xlat48;
  u_xlat48 = ((x_731 * x_732) + 1.0f);
  let x_735 : f32 = u_xlat48;
  u_xlat48 = log2(x_735);
  let x_737 : f32 = u_xlat48;
  let x_739 : f32 = x_33.unity_SpecCube0_HDR.y;
  u_xlat48 = (x_737 * x_739);
  let x_741 : f32 = u_xlat48;
  u_xlat48 = exp2(x_741);
  let x_743 : f32 = u_xlat48;
  let x_745 : f32 = x_33.unity_SpecCube0_HDR.x;
  u_xlat48 = (x_743 * x_745);
  let x_747 : vec4<f32> = u_xlat8;
  let x_749 : f32 = u_xlat48;
  let x_751 : vec3<f32> = (vec3<f32>(x_747.x, x_747.y, x_747.z) * vec3<f32>(x_749, x_749, x_749));
  let x_752 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_751.x, x_751.y, x_751.z, x_752.w);
  let x_755 : f32 = x_33.unity_SpecCube0_BoxMin.w;
  u_xlatb4 = (x_755 < 0.999989986f);
  let x_758 : bool = u_xlatb4;
  if (x_758) {
    let x_763 : f32 = x_33.unity_SpecCube1_ProbePosition.w;
    u_xlatb4 = (0.0f < x_763);
    let x_765 : bool = u_xlatb4;
    if (x_765) {
      let x_768 : vec4<f32> = u_xlat5;
      let x_770 : vec4<f32> = u_xlat5;
      u_xlat4.x = dot(vec3<f32>(x_768.x, x_768.y, x_768.z), vec3<f32>(x_770.x, x_770.y, x_770.z));
      let x_775 : f32 = u_xlat4.x;
      u_xlat4.x = inverseSqrt(x_775);
      let x_778 : vec4<f32> = u_xlat4;
      let x_780 : vec4<f32> = u_xlat5;
      u_xlat10 = (vec3<f32>(x_778.x, x_778.x, x_778.x) * vec3<f32>(x_780.x, x_780.y, x_780.z));
      let x_784 : f32 = vs_TEXCOORD2.w;
      u_xlat11.x = x_784;
      let x_787 : f32 = vs_TEXCOORD3.w;
      u_xlat11.y = x_787;
      let x_790 : f32 = vs_TEXCOORD4.w;
      u_xlat11.z = x_790;
      let x_793 : vec3<f32> = u_xlat11;
      let x_797 : vec4<f32> = x_33.unity_SpecCube1_BoxMax;
      u_xlat12 = (-(x_793) + vec3<f32>(x_797.x, x_797.y, x_797.z));
      let x_800 : vec3<f32> = u_xlat12;
      let x_801 : vec3<f32> = u_xlat10;
      u_xlat12 = (x_800 / x_801);
      let x_804 : vec3<f32> = u_xlat11;
      let x_808 : vec4<f32> = x_33.unity_SpecCube1_BoxMin;
      u_xlat13 = (-(x_804) + vec3<f32>(x_808.x, x_808.y, x_808.z));
      let x_811 : vec3<f32> = u_xlat13;
      let x_812 : vec3<f32> = u_xlat10;
      u_xlat13 = (x_811 / x_812);
      let x_815 : vec3<f32> = u_xlat10;
      let x_817 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_815.x, x_815.y, x_815.z, x_815.x));
      u_xlatb14 = vec3<bool>(x_817.x, x_817.y, x_817.z);
      let x_820 : vec3<f32> = u_xlat12;
      hlslcc_movcTemp_1 = x_820;
      let x_822 : bool = u_xlatb14.x;
      if (x_822) {
        let x_827 : f32 = u_xlat12.x;
        x_823 = x_827;
      } else {
        let x_830 : f32 = u_xlat13.x;
        x_823 = x_830;
      }
      let x_831 : f32 = x_823;
      hlslcc_movcTemp_1.x = x_831;
      let x_834 : bool = u_xlatb14.y;
      if (x_834) {
        let x_839 : f32 = u_xlat12.y;
        x_835 = x_839;
      } else {
        let x_842 : f32 = u_xlat13.y;
        x_835 = x_842;
      }
      let x_843 : f32 = x_835;
      hlslcc_movcTemp_1.y = x_843;
      let x_846 : bool = u_xlatb14.z;
      if (x_846) {
        let x_851 : f32 = u_xlat12.z;
        x_847 = x_851;
      } else {
        let x_854 : f32 = u_xlat13.z;
        x_847 = x_854;
      }
      let x_855 : f32 = x_847;
      hlslcc_movcTemp_1.z = x_855;
      let x_857 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat12 = x_857;
      let x_859 : f32 = u_xlat12.y;
      let x_861 : f32 = u_xlat12.x;
      u_xlat4.x = min(x_859, x_861);
      let x_865 : f32 = u_xlat12.z;
      let x_867 : f32 = u_xlat4.x;
      u_xlat4.x = min(x_865, x_867);
      let x_870 : vec3<f32> = u_xlat11;
      let x_872 : vec4<f32> = x_33.unity_SpecCube1_ProbePosition;
      u_xlat11 = (x_870 + -(vec3<f32>(x_872.x, x_872.y, x_872.z)));
      let x_876 : vec3<f32> = u_xlat10;
      let x_877 : vec4<f32> = u_xlat4;
      let x_880 : vec3<f32> = u_xlat11;
      let x_881 : vec3<f32> = ((x_876 * vec3<f32>(x_877.x, x_877.x, x_877.x)) + x_880);
      let x_882 : vec4<f32> = u_xlat5;
      u_xlat5 = vec4<f32>(x_881.x, x_881.y, x_881.z, x_882.w);
    }
    let x_888 : vec4<f32> = u_xlat5;
    let x_890 : f32 = u_xlat47;
    let x_891 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_888.x, x_888.y, x_888.z), x_890);
    u_xlat5 = x_891;
    let x_893 : f32 = u_xlat5.w;
    u_xlat47 = (x_893 + -1.0f);
    let x_897 : f32 = x_33.unity_SpecCube1_HDR.w;
    let x_898 : f32 = u_xlat47;
    u_xlat47 = ((x_897 * x_898) + 1.0f);
    let x_901 : f32 = u_xlat47;
    u_xlat47 = log2(x_901);
    let x_903 : f32 = u_xlat47;
    let x_905 : f32 = x_33.unity_SpecCube1_HDR.y;
    u_xlat47 = (x_903 * x_905);
    let x_907 : f32 = u_xlat47;
    u_xlat47 = exp2(x_907);
    let x_909 : f32 = u_xlat47;
    let x_911 : f32 = x_33.unity_SpecCube1_HDR.x;
    u_xlat47 = (x_909 * x_911);
    let x_913 : vec4<f32> = u_xlat5;
    let x_915 : f32 = u_xlat47;
    let x_917 : vec3<f32> = (vec3<f32>(x_913.x, x_913.y, x_913.z) * vec3<f32>(x_915, x_915, x_915));
    let x_918 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_917.x, x_917.y, x_917.z, x_918.w);
    let x_920 : f32 = u_xlat48;
    let x_922 : vec4<f32> = u_xlat8;
    let x_925 : vec4<f32> = u_xlat5;
    let x_928 : vec3<f32> = ((vec3<f32>(x_920, x_920, x_920) * vec3<f32>(x_922.x, x_922.y, x_922.z)) + -(vec3<f32>(x_925.x, x_925.y, x_925.z)));
    let x_929 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_928.x, x_928.y, x_928.z, x_929.w);
    let x_932 : vec4<f32> = x_33.unity_SpecCube0_BoxMin;
    let x_934 : vec4<f32> = u_xlat8;
    let x_937 : vec4<f32> = u_xlat5;
    let x_939 : vec3<f32> = ((vec3<f32>(x_932.w, x_932.w, x_932.w) * vec3<f32>(x_934.x, x_934.y, x_934.z)) + vec3<f32>(x_937.x, x_937.y, x_937.z));
    let x_940 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_939.x, x_939.y, x_939.z, x_940.w);
  }
  let x_942 : vec3<f32> = u_xlat19;
  let x_944 : vec4<f32> = u_xlat9;
  let x_946 : vec3<f32> = (vec3<f32>(x_942.x, x_942.x, x_942.x) * vec3<f32>(x_944.x, x_944.y, x_944.z));
  let x_947 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_946.x, x_946.y, x_946.z, x_947.w);
  let x_949 : vec4<f32> = vs_TEXCOORD1;
  let x_952 : f32 = u_xlat46;
  let x_956 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  let x_958 : vec3<f32> = ((-(vec3<f32>(x_949.x, x_949.y, x_949.z)) * vec3<f32>(x_952, x_952, x_952)) + vec3<f32>(x_956.x, x_956.y, x_956.z));
  let x_959 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_958.x, x_958.y, x_958.z, x_959.w);
  let x_961 : vec4<f32> = u_xlat8;
  let x_963 : vec4<f32> = u_xlat8;
  u_xlat46 = dot(vec3<f32>(x_961.x, x_961.y, x_961.z), vec3<f32>(x_963.x, x_963.y, x_963.z));
  let x_966 : f32 = u_xlat46;
  u_xlat46 = max(x_966, 0.001f);
  let x_969 : f32 = u_xlat46;
  u_xlat46 = inverseSqrt(x_969);
  let x_971 : f32 = u_xlat46;
  let x_973 : vec4<f32> = u_xlat8;
  let x_975 : vec3<f32> = (vec3<f32>(x_971, x_971, x_971) * vec3<f32>(x_973.x, x_973.y, x_973.z));
  let x_976 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_975.x, x_975.y, x_975.z, x_976.w);
  let x_978 : vec4<f32> = u_xlat2;
  let x_980 : vec4<f32> = u_xlat3;
  u_xlat46 = dot(vec3<f32>(x_978.x, x_978.y, x_978.z), -(vec3<f32>(x_980.x, x_980.y, x_980.z)));
  let x_984 : vec4<f32> = u_xlat2;
  let x_987 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  u_xlat47 = dot(vec3<f32>(x_984.x, x_984.y, x_984.z), vec3<f32>(x_987.x, x_987.y, x_987.z));
  let x_990 : f32 = u_xlat47;
  u_xlat47 = clamp(x_990, 0.0f, 1.0f);
  let x_992 : vec4<f32> = u_xlat2;
  let x_994 : vec4<f32> = u_xlat8;
  u_xlat2.x = dot(vec3<f32>(x_992.x, x_992.y, x_992.z), vec3<f32>(x_994.x, x_994.y, x_994.z));
  let x_999 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_999, 0.0f, 1.0f);
  let x_1003 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  let x_1005 : vec4<f32> = u_xlat8;
  u_xlat17.x = dot(vec3<f32>(x_1003.x, x_1003.y, x_1003.z), vec3<f32>(x_1005.x, x_1005.y, x_1005.z));
  let x_1010 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_1010, 0.0f, 1.0f);
  let x_1015 : f32 = u_xlat17.x;
  let x_1017 : f32 = u_xlat17.x;
  u_xlat32 = (x_1015 * x_1017);
  let x_1019 : f32 = u_xlat32;
  let x_1021 : f32 = u_xlat34;
  u_xlat32 = dot(vec2<f32>(x_1019, x_1019), vec2<f32>(x_1021, x_1021));
  let x_1024 : f32 = u_xlat32;
  u_xlat32 = (x_1024 + -0.5f);
  let x_1027 : f32 = u_xlat47;
  u_xlat3.x = (-(x_1027) + 1.0f);
  let x_1033 : f32 = u_xlat3.x;
  let x_1035 : f32 = u_xlat3.x;
  u_xlat18 = (x_1033 * x_1035);
  let x_1037 : f32 = u_xlat18;
  let x_1038 : f32 = u_xlat18;
  u_xlat18 = (x_1037 * x_1038);
  let x_1041 : f32 = u_xlat3.x;
  let x_1042 : f32 = u_xlat18;
  u_xlat3.x = (x_1041 * x_1042);
  let x_1045 : f32 = u_xlat32;
  let x_1047 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1045 * x_1047) + 1.0f);
  let x_1051 : f32 = u_xlat46;
  u_xlat18 = (-(abs(x_1051)) + 1.0f);
  let x_1056 : f32 = u_xlat18;
  let x_1057 : f32 = u_xlat18;
  u_xlat33 = (x_1056 * x_1057);
  let x_1059 : f32 = u_xlat33;
  let x_1060 : f32 = u_xlat33;
  u_xlat33 = (x_1059 * x_1060);
  let x_1062 : f32 = u_xlat18;
  let x_1063 : f32 = u_xlat33;
  u_xlat18 = (x_1062 * x_1063);
  let x_1065 : f32 = u_xlat32;
  let x_1066 : f32 = u_xlat18;
  u_xlat32 = ((x_1065 * x_1066) + 1.0f);
  let x_1069 : f32 = u_xlat32;
  let x_1071 : f32 = u_xlat3.x;
  u_xlat32 = (x_1069 * x_1071);
  let x_1073 : f32 = u_xlat47;
  let x_1074 : f32 = u_xlat32;
  u_xlat32 = (x_1073 * x_1074);
  let x_1076 : f32 = u_xlat34;
  let x_1077 : f32 = u_xlat34;
  u_xlat3.x = (x_1076 * x_1077);
  let x_1081 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_1081, 0.002f);
  let x_1086 : f32 = u_xlat3.x;
  u_xlat33 = (-(x_1086) + 1.0f);
  let x_1089 : f32 = u_xlat46;
  let x_1091 : f32 = u_xlat33;
  let x_1094 : f32 = u_xlat3.x;
  u_xlat48 = ((abs(x_1089) * x_1091) + x_1094);
  let x_1096 : f32 = u_xlat47;
  let x_1097 : f32 = u_xlat33;
  let x_1100 : f32 = u_xlat3.x;
  u_xlat33 = ((x_1096 * x_1097) + x_1100);
  let x_1102 : f32 = u_xlat46;
  let x_1104 : f32 = u_xlat33;
  u_xlat46 = (abs(x_1102) * x_1104);
  let x_1106 : f32 = u_xlat47;
  let x_1107 : f32 = u_xlat48;
  let x_1109 : f32 = u_xlat46;
  u_xlat46 = ((x_1106 * x_1107) + x_1109);
  let x_1111 : f32 = u_xlat46;
  u_xlat46 = (x_1111 + 0.00001f);
  let x_1114 : f32 = u_xlat46;
  u_xlat46 = (0.5f / x_1114);
  let x_1117 : f32 = u_xlat3.x;
  let x_1119 : f32 = u_xlat3.x;
  u_xlat33 = (x_1117 * x_1119);
  let x_1122 : f32 = u_xlat2.x;
  let x_1123 : f32 = u_xlat33;
  let x_1126 : f32 = u_xlat2.x;
  u_xlat48 = ((x_1122 * x_1123) + -(x_1126));
  let x_1129 : f32 = u_xlat48;
  let x_1131 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1129 * x_1131) + 1.0f);
  let x_1135 : f32 = u_xlat33;
  u_xlat33 = (x_1135 * 0.318309873f);
  let x_1139 : f32 = u_xlat2.x;
  let x_1141 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1139 * x_1141) + 0.0000001f);
  let x_1146 : f32 = u_xlat33;
  let x_1148 : f32 = u_xlat2.x;
  u_xlat2.x = (x_1146 / x_1148);
  let x_1151 : f32 = u_xlat46;
  let x_1153 : f32 = u_xlat2.x;
  u_xlat46 = (x_1151 * x_1153);
  let x_1155 : f32 = u_xlat47;
  let x_1156 : f32 = u_xlat46;
  u_xlat46 = (x_1155 * x_1156);
  let x_1158 : f32 = u_xlat46;
  u_xlat46 = (x_1158 * 3.141592741f);
  let x_1161 : f32 = u_xlat46;
  u_xlat46 = max(x_1161, 0.0f);
  let x_1164 : f32 = u_xlat3.x;
  let x_1166 : f32 = u_xlat3.x;
  u_xlat2.x = ((x_1164 * x_1166) + 1.0f);
  let x_1171 : f32 = u_xlat2.x;
  u_xlat2.x = (1.0f / x_1171);
  let x_1174 : vec3<f32> = u_xlat0;
  let x_1175 : vec3<f32> = u_xlat0;
  u_xlat47 = dot(x_1174, x_1175);
  let x_1177 : f32 = u_xlat47;
  u_xlatb47 = !((x_1177 == 0.0f));
  let x_1179 : bool = u_xlatb47;
  u_xlat47 = select(0.0f, 1.0f, x_1179);
  let x_1181 : f32 = u_xlat46;
  let x_1182 : f32 = u_xlat47;
  u_xlat46 = (x_1181 * x_1182);
  let x_1184 : f32 = u_xlat45;
  let x_1187 : f32 = x_33.x_Glossiness;
  u_xlat45 = (-(x_1184) + x_1187);
  let x_1189 : f32 = u_xlat45;
  u_xlat45 = (x_1189 + 1.0f);
  let x_1191 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1191, 0.0f, 1.0f);
  let x_1193 : f32 = u_xlat32;
  let x_1195 : vec3<f32> = u_xlat6;
  let x_1196 : vec3<f32> = (vec3<f32>(x_1193, x_1193, x_1193) * x_1195);
  let x_1197 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1196.x, x_1197.y, x_1196.y, x_1196.z);
  let x_1199 : vec4<f32> = u_xlat7;
  let x_1201 : vec3<f32> = u_xlat19;
  let x_1204 : vec4<f32> = u_xlat3;
  let x_1206 : vec3<f32> = ((vec3<f32>(x_1199.x, x_1199.y, x_1199.z) * vec3<f32>(x_1201.x, x_1201.x, x_1201.x)) + vec3<f32>(x_1204.x, x_1204.z, x_1204.w));
  let x_1207 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1206.x, x_1207.y, x_1206.y, x_1206.z);
  let x_1209 : vec3<f32> = u_xlat6;
  let x_1210 : f32 = u_xlat46;
  let x_1212 : vec3<f32> = (x_1209 * vec3<f32>(x_1210, x_1210, x_1210));
  let x_1213 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1212.x, x_1212.y, x_1212.z, x_1213.w);
  let x_1216 : f32 = u_xlat17.x;
  u_xlat46 = (-(x_1216) + 1.0f);
  let x_1219 : f32 = u_xlat46;
  let x_1220 : f32 = u_xlat46;
  u_xlat17.x = (x_1219 * x_1220);
  let x_1224 : f32 = u_xlat17.x;
  let x_1226 : f32 = u_xlat17.x;
  u_xlat17.x = (x_1224 * x_1226);
  let x_1229 : f32 = u_xlat46;
  let x_1231 : f32 = u_xlat17.x;
  u_xlat46 = (x_1229 * x_1231);
  let x_1233 : vec3<f32> = u_xlat0;
  u_xlat17 = (-(x_1233) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1237 : vec3<f32> = u_xlat17;
  let x_1238 : f32 = u_xlat46;
  let x_1241 : vec3<f32> = u_xlat0;
  u_xlat17 = ((x_1237 * vec3<f32>(x_1238, x_1238, x_1238)) + x_1241);
  let x_1243 : vec3<f32> = u_xlat17;
  let x_1244 : vec4<f32> = u_xlat4;
  u_xlat17 = (x_1243 * vec3<f32>(x_1244.x, x_1244.y, x_1244.z));
  let x_1247 : vec3<f32> = u_xlat1;
  let x_1248 : vec4<f32> = u_xlat3;
  let x_1251 : vec3<f32> = u_xlat17;
  u_xlat1 = ((x_1247 * vec3<f32>(x_1248.x, x_1248.z, x_1248.w)) + x_1251);
  let x_1253 : vec4<f32> = u_xlat5;
  let x_1255 : vec4<f32> = u_xlat2;
  let x_1257 : vec3<f32> = (vec3<f32>(x_1253.x, x_1253.y, x_1253.z) * vec3<f32>(x_1255.x, x_1255.x, x_1255.x));
  let x_1258 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1257.x, x_1257.y, x_1257.z, x_1258.w);
  let x_1260 : vec3<f32> = u_xlat0;
  let x_1262 : f32 = u_xlat45;
  let x_1264 : vec3<f32> = (-(x_1260) + vec3<f32>(x_1262, x_1262, x_1262));
  let x_1265 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1264.x, x_1265.y, x_1264.y, x_1264.z);
  let x_1267 : f32 = u_xlat18;
  let x_1269 : vec4<f32> = u_xlat3;
  let x_1272 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1267, x_1267, x_1267) * vec3<f32>(x_1269.x, x_1269.z, x_1269.w)) + x_1272);
  let x_1276 : vec4<f32> = u_xlat2;
  let x_1278 : vec3<f32> = u_xlat0;
  let x_1280 : vec3<f32> = u_xlat1;
  let x_1281 : vec3<f32> = ((vec3<f32>(x_1276.x, x_1276.y, x_1276.z) * x_1278) + x_1280);
  let x_1282 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1281.x, x_1281.y, x_1281.z, x_1282.w);
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

