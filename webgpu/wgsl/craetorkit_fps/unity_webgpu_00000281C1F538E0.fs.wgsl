struct PGlobals {
  x_Time : vec4<f32>,
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
  x_VeinColor : vec4<f32>,
  x_BrainColor : vec4<f32>,
}

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_38 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_Occlusion : texture_2d<f32>;

@group(0) @binding(12) var sampler_Occlusion : sampler;

@group(0) @binding(2) var x_Metallic : texture_2d<f32>;

@group(0) @binding(10) var sampler_Metallic : sampler;

@group(0) @binding(3) var x_NormalMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_NormalMap : sampler;

@group(0) @binding(6) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(8) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(0) @binding(4) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(5) var unity_SpecCube1 : texture_cube<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat48 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat49 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat50 : f32;
  var u_xlat51 : f32;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlatb50 : bool;
  var u_xlatb51 : bool;
  var x_289 : vec3<f32>;
  var u_xlat20 : f32;
  var u_xlat8 : vec3<f32>;
  var u_xlat9 : vec4<f32>;
  var x_463 : vec3<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec3<f32>;
  var u_xlatb13 : vec3<bool>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_649 : f32;
  var x_661 : f32;
  var x_673 : f32;
  var u_xlatb20 : bool;
  var u_xlat13 : vec3<f32>;
  var u_xlat14 : vec3<f32>;
  var u_xlatb15 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_831 : f32;
  var x_843 : f32;
  var x_855 : f32;
  var u_xlat18 : f32;
  var u_xlat17 : f32;
  var u_xlat33 : f32;
  var u_xlat34 : f32;
  var u_xlatb2 : bool;
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
  let x_32 : vec4<f32> = u_xlat0;
  let x_43 : vec3<f32> = x_38.x_WorldSpaceCameraPos;
  let x_44 : vec3<f32> = (-(vec3<f32>(x_32.x, x_32.y, x_32.z)) + x_43);
  let x_45 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_44.x, x_44.y, x_44.z, x_45.w);
  let x_48 : vec4<f32> = u_xlat1;
  let x_50 : vec4<f32> = u_xlat1;
  u_xlat48 = dot(vec3<f32>(x_48.x, x_48.y, x_48.z), vec3<f32>(x_50.x, x_50.y, x_50.z));
  let x_53 : f32 = u_xlat48;
  u_xlat48 = inverseSqrt(x_53);
  let x_56 : f32 = u_xlat48;
  let x_58 : vec4<f32> = u_xlat1;
  let x_60 : vec3<f32> = (vec3<f32>(x_56, x_56, x_56) * vec3<f32>(x_58.x, x_58.y, x_58.z));
  let x_61 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_60.x, x_60.y, x_60.z, x_61.w);
  let x_78 : vec2<f32> = vs_TEXCOORD0;
  let x_79 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_78);
  u_xlat3 = vec3<f32>(x_79.x, x_79.y, x_79.z);
  let x_87 : vec2<f32> = vs_TEXCOORD0;
  let x_88 : vec4<f32> = textureSample(x_Occlusion, sampler_Occlusion, x_87);
  u_xlat49 = x_88.x;
  let x_96 : vec2<f32> = vs_TEXCOORD0;
  let x_97 : vec4<f32> = textureSample(x_Metallic, sampler_Metallic, x_96);
  u_xlat4 = x_97;
  let x_104 : vec2<f32> = vs_TEXCOORD0;
  let x_105 : vec4<f32> = textureSample(x_NormalMap, sampler_NormalMap, x_104);
  let x_106 : vec3<f32> = vec3<f32>(x_105.x, x_105.y, x_105.w);
  let x_107 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_106.x, x_106.y, x_106.z, x_107.w);
  let x_110 : f32 = u_xlat5.z;
  let x_112 : f32 = u_xlat5.x;
  u_xlat5.x = (x_110 * x_112);
  let x_115 : vec4<f32> = u_xlat5;
  let x_122 : vec2<f32> = ((vec2<f32>(x_115.x, x_115.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_123 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_122.x, x_122.y, x_123.z, x_123.w);
  let x_126 : vec4<f32> = u_xlat5;
  let x_128 : vec4<f32> = u_xlat5;
  u_xlat50 = dot(vec2<f32>(x_126.x, x_126.y), vec2<f32>(x_128.x, x_128.y));
  let x_131 : f32 = u_xlat50;
  u_xlat50 = min(x_131, 1.0f);
  let x_134 : f32 = u_xlat50;
  u_xlat50 = (-(x_134) + 1.0f);
  let x_137 : f32 = u_xlat50;
  u_xlat5.z = sqrt(x_137);
  let x_143 : f32 = x_38.x_Time.y;
  u_xlat50 = fract(x_143);
  let x_145 : f32 = u_xlat50;
  u_xlat50 = (x_145 + -0.039999999f);
  let x_148 : f32 = u_xlat50;
  let x_151 : f32 = vs_TEXCOORD0.y;
  u_xlat50 = (-(x_148) + x_151);
  let x_153 : f32 = u_xlat50;
  u_xlat50 = (x_153 * 12.5f);
  let x_156 : f32 = u_xlat50;
  u_xlat50 = clamp(x_156, 0.0f, 1.0f);
  let x_160 : f32 = u_xlat50;
  u_xlat51 = ((x_160 * -2.0f) + 3.0f);
  let x_165 : f32 = u_xlat50;
  let x_166 : f32 = u_xlat50;
  u_xlat50 = (x_165 * x_166);
  let x_168 : f32 = u_xlat50;
  let x_169 : f32 = u_xlat51;
  u_xlat50 = (x_168 * x_169);
  let x_171 : f32 = u_xlat50;
  u_xlat50 = (x_171 * 3.140000105f);
  let x_174 : f32 = u_xlat50;
  u_xlat50 = sin(x_174);
  let x_176 : f32 = u_xlat50;
  u_xlat50 = max(x_176, 0.0f);
  let x_179 : f32 = x_38.x_Time.y;
  u_xlat51 = (x_179 * 0.200000003f);
  let x_182 : f32 = u_xlat51;
  u_xlat51 = fract(x_182);
  let x_184 : f32 = u_xlat51;
  u_xlat51 = (x_184 * 3.140000105f);
  let x_186 : f32 = u_xlat51;
  u_xlat51 = sin(x_186);
  let x_189 : vec4<f32> = u_xlat4;
  let x_193 : vec3<f32> = (-(vec3<f32>(x_189.y, x_189.z, x_189.w)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_194 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_193.x, x_193.y, x_193.z, x_194.w);
  let x_197 : vec4<f32> = u_xlat6;
  let x_202 : vec4<f32> = x_38.x_BrainColor;
  let x_204 : vec3<f32> = (vec3<f32>(x_197.x, x_197.x, x_197.x) * vec3<f32>(x_202.x, x_202.y, x_202.z));
  let x_205 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_204.x, x_204.y, x_204.z, x_205.w);
  let x_207 : vec4<f32> = u_xlat6;
  let x_211 : vec4<f32> = x_38.x_VeinColor;
  let x_213 : vec3<f32> = (vec3<f32>(x_207.y, x_207.y, x_207.y) * vec3<f32>(x_211.x, x_211.y, x_211.z));
  let x_214 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_213.x, x_213.y, x_214.z, x_213.z);
  let x_216 : f32 = u_xlat50;
  let x_218 : vec4<f32> = u_xlat6;
  let x_220 : vec3<f32> = (vec3<f32>(x_216, x_216, x_216) * vec3<f32>(x_218.x, x_218.y, x_218.w));
  let x_221 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_220.x, x_220.y, x_221.z, x_220.z);
  let x_223 : vec4<f32> = u_xlat7;
  let x_225 : f32 = u_xlat51;
  let x_228 : vec4<f32> = u_xlat6;
  let x_230 : vec3<f32> = ((vec3<f32>(x_223.x, x_223.y, x_223.z) * vec3<f32>(x_225, x_225, x_225)) + vec3<f32>(x_228.x, x_228.y, x_228.w));
  let x_231 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_230.x, x_230.y, x_231.z, x_230.z);
  let x_238 : f32 = x_38.unity_ProbeVolumeParams.x;
  u_xlatb50 = (x_238 == 1.0f);
  let x_240 : bool = u_xlatb50;
  if (x_240) {
    let x_245 : f32 = x_38.unity_ProbeVolumeParams.y;
    u_xlatb51 = (x_245 == 1.0f);
    let x_247 : vec4<f32> = vs_TEXCOORD2;
    let x_251 : vec4<f32> = x_38.unity_ProbeVolumeWorldToObject[1i];
    let x_253 : vec3<f32> = (vec3<f32>(x_247.w, x_247.w, x_247.w) * vec3<f32>(x_251.x, x_251.y, x_251.z));
    let x_254 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_253.x, x_253.y, x_253.z, x_254.w);
    let x_257 : vec4<f32> = x_38.unity_ProbeVolumeWorldToObject[0i];
    let x_259 : vec4<f32> = vs_TEXCOORD1;
    let x_262 : vec4<f32> = u_xlat7;
    let x_264 : vec3<f32> = ((vec3<f32>(x_257.x, x_257.y, x_257.z) * vec3<f32>(x_259.w, x_259.w, x_259.w)) + vec3<f32>(x_262.x, x_262.y, x_262.z));
    let x_265 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_264.x, x_264.y, x_264.z, x_265.w);
    let x_269 : vec4<f32> = x_38.unity_ProbeVolumeWorldToObject[2i];
    let x_271 : vec4<f32> = vs_TEXCOORD3;
    let x_274 : vec4<f32> = u_xlat7;
    let x_276 : vec3<f32> = ((vec3<f32>(x_269.x, x_269.y, x_269.z) * vec3<f32>(x_271.w, x_271.w, x_271.w)) + vec3<f32>(x_274.x, x_274.y, x_274.z));
    let x_277 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_276.x, x_276.y, x_276.z, x_277.w);
    let x_279 : vec4<f32> = u_xlat7;
    let x_283 : vec4<f32> = x_38.unity_ProbeVolumeWorldToObject[3i];
    let x_285 : vec3<f32> = (vec3<f32>(x_279.x, x_279.y, x_279.z) + vec3<f32>(x_283.x, x_283.y, x_283.z));
    let x_286 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_285.x, x_285.y, x_285.z, x_286.w);
    let x_288 : bool = u_xlatb51;
    if (x_288) {
      let x_292 : vec4<f32> = u_xlat7;
      x_289 = vec3<f32>(x_292.x, x_292.y, x_292.z);
    } else {
      let x_295 : vec4<f32> = u_xlat0;
      x_289 = vec3<f32>(x_295.x, x_295.y, x_295.z);
    }
    let x_297 : vec3<f32> = x_289;
    let x_298 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_297.x, x_297.y, x_297.z, x_298.w);
    let x_300 : vec4<f32> = u_xlat7;
    let x_304 : vec3<f32> = x_38.unity_ProbeVolumeMin;
    let x_306 : vec3<f32> = (vec3<f32>(x_300.x, x_300.y, x_300.z) + -(x_304));
    let x_307 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_306.x, x_306.y, x_306.z, x_307.w);
    let x_309 : vec4<f32> = u_xlat7;
    let x_313 : vec3<f32> = x_38.unity_ProbeVolumeSizeInv;
    let x_314 : vec3<f32> = (vec3<f32>(x_309.x, x_309.y, x_309.z) * x_313);
    let x_315 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_315.x, x_314.x, x_314.y, x_314.z);
    let x_318 : f32 = u_xlat7.y;
    u_xlat51 = ((x_318 * 0.25f) + 0.75f);
    let x_325 : f32 = x_38.unity_ProbeVolumeParams.z;
    u_xlat20 = ((x_325 * 0.5f) + 0.75f);
    let x_329 : f32 = u_xlat51;
    let x_330 : f32 = u_xlat20;
    u_xlat7.x = max(x_329, x_330);
    let x_341 : vec4<f32> = u_xlat7;
    let x_343 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_341.x, x_341.z, x_341.w));
    u_xlat7 = x_343;
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
    u_xlat7.w = 1.0f;
  }
  let x_349 : vec4<f32> = u_xlat7;
  let x_352 : vec4<f32> = x_38.unity_OcclusionMaskSelector;
  u_xlat51 = dot(x_349, x_352);
  let x_354 : f32 = u_xlat51;
  u_xlat51 = clamp(x_354, 0.0f, 1.0f);
  let x_356 : vec4<f32> = vs_TEXCOORD1;
  let x_358 : vec4<f32> = u_xlat5;
  u_xlat7.x = dot(vec3<f32>(x_356.x, x_356.y, x_356.z), vec3<f32>(x_358.x, x_358.y, x_358.z));
  let x_362 : vec4<f32> = vs_TEXCOORD2;
  let x_364 : vec4<f32> = u_xlat5;
  u_xlat7.y = dot(vec3<f32>(x_362.x, x_362.y, x_362.z), vec3<f32>(x_364.x, x_364.y, x_364.z));
  let x_368 : vec4<f32> = vs_TEXCOORD3;
  let x_370 : vec4<f32> = u_xlat5;
  u_xlat7.z = dot(vec3<f32>(x_368.x, x_368.y, x_368.z), vec3<f32>(x_370.x, x_370.y, x_370.z));
  let x_374 : vec4<f32> = u_xlat7;
  let x_376 : vec4<f32> = u_xlat7;
  u_xlat20 = dot(vec3<f32>(x_374.x, x_374.y, x_374.z), vec3<f32>(x_376.x, x_376.y, x_376.z));
  let x_379 : f32 = u_xlat20;
  u_xlat20 = inverseSqrt(x_379);
  let x_381 : f32 = u_xlat20;
  let x_383 : vec4<f32> = u_xlat7;
  let x_385 : vec3<f32> = (vec3<f32>(x_381, x_381, x_381) * vec3<f32>(x_383.x, x_383.y, x_383.z));
  let x_386 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_385.x, x_385.y, x_385.z, x_386.w);
  let x_388 : vec4<f32> = u_xlat2;
  let x_391 : vec4<f32> = u_xlat5;
  u_xlat20 = dot(-(vec3<f32>(x_388.x, x_388.y, x_388.z)), vec3<f32>(x_391.x, x_391.y, x_391.z));
  let x_394 : f32 = u_xlat20;
  let x_395 : f32 = u_xlat20;
  u_xlat20 = (x_394 + x_395);
  let x_397 : vec4<f32> = u_xlat5;
  let x_399 : f32 = u_xlat20;
  let x_403 : vec4<f32> = u_xlat2;
  let x_406 : vec3<f32> = ((vec3<f32>(x_397.x, x_397.y, x_397.z) * -(vec3<f32>(x_399, x_399, x_399))) + -(vec3<f32>(x_403.x, x_403.y, x_403.z)));
  let x_407 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_406.x, x_406.y, x_406.z, x_407.w);
  let x_410 : f32 = u_xlat51;
  let x_414 : vec4<f32> = x_38.x_LightColor0;
  u_xlat8 = (vec3<f32>(x_410, x_410, x_410) * vec3<f32>(x_414.x, x_414.y, x_414.z));
  let x_417 : bool = u_xlatb50;
  if (x_417) {
    let x_421 : f32 = x_38.unity_ProbeVolumeParams.y;
    u_xlatb50 = (x_421 == 1.0f);
    let x_424 : vec4<f32> = vs_TEXCOORD2;
    let x_427 : vec4<f32> = x_38.unity_ProbeVolumeWorldToObject[1i];
    let x_429 : vec3<f32> = (vec3<f32>(x_424.w, x_424.w, x_424.w) * vec3<f32>(x_427.x, x_427.y, x_427.z));
    let x_430 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_429.x, x_429.y, x_429.z, x_430.w);
    let x_433 : vec4<f32> = x_38.unity_ProbeVolumeWorldToObject[0i];
    let x_435 : vec4<f32> = vs_TEXCOORD1;
    let x_438 : vec4<f32> = u_xlat9;
    let x_440 : vec3<f32> = ((vec3<f32>(x_433.x, x_433.y, x_433.z) * vec3<f32>(x_435.w, x_435.w, x_435.w)) + vec3<f32>(x_438.x, x_438.y, x_438.z));
    let x_441 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_440.x, x_440.y, x_440.z, x_441.w);
    let x_444 : vec4<f32> = x_38.unity_ProbeVolumeWorldToObject[2i];
    let x_446 : vec4<f32> = vs_TEXCOORD3;
    let x_449 : vec4<f32> = u_xlat9;
    let x_451 : vec3<f32> = ((vec3<f32>(x_444.x, x_444.y, x_444.z) * vec3<f32>(x_446.w, x_446.w, x_446.w)) + vec3<f32>(x_449.x, x_449.y, x_449.z));
    let x_452 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_451.x, x_451.y, x_451.z, x_452.w);
    let x_454 : vec4<f32> = u_xlat9;
    let x_457 : vec4<f32> = x_38.unity_ProbeVolumeWorldToObject[3i];
    let x_459 : vec3<f32> = (vec3<f32>(x_454.x, x_454.y, x_454.z) + vec3<f32>(x_457.x, x_457.y, x_457.z));
    let x_460 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_459.x, x_459.y, x_459.z, x_460.w);
    let x_462 : bool = u_xlatb50;
    if (x_462) {
      let x_466 : vec4<f32> = u_xlat9;
      x_463 = vec3<f32>(x_466.x, x_466.y, x_466.z);
    } else {
      let x_469 : vec4<f32> = u_xlat0;
      x_463 = vec3<f32>(x_469.x, x_469.y, x_469.z);
    }
    let x_471 : vec3<f32> = x_463;
    let x_472 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_471.x, x_471.y, x_471.z, x_472.w);
    let x_474 : vec4<f32> = u_xlat9;
    let x_477 : vec3<f32> = x_38.unity_ProbeVolumeMin;
    let x_479 : vec3<f32> = (vec3<f32>(x_474.x, x_474.y, x_474.z) + -(x_477));
    let x_480 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_479.x, x_479.y, x_479.z, x_480.w);
    let x_482 : vec4<f32> = u_xlat9;
    let x_485 : vec3<f32> = x_38.unity_ProbeVolumeSizeInv;
    let x_486 : vec3<f32> = (vec3<f32>(x_482.x, x_482.y, x_482.z) * x_485);
    let x_487 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_487.x, x_486.x, x_486.y, x_486.z);
    let x_490 : f32 = u_xlat9.y;
    u_xlat50 = (x_490 * 0.25f);
    let x_493 : f32 = x_38.unity_ProbeVolumeParams.z;
    u_xlat51 = (x_493 * 0.5f);
    let x_496 : f32 = x_38.unity_ProbeVolumeParams.z;
    u_xlat20 = ((-(x_496) * 0.5f) + 0.25f);
    let x_500 : f32 = u_xlat50;
    let x_501 : f32 = u_xlat51;
    u_xlat50 = max(x_500, x_501);
    let x_503 : f32 = u_xlat20;
    let x_504 : f32 = u_xlat50;
    u_xlat9.x = min(x_503, x_504);
    let x_511 : vec4<f32> = u_xlat9;
    let x_513 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_511.x, x_511.z, x_511.w));
    u_xlat10 = x_513;
    let x_515 : vec4<f32> = u_xlat9;
    let x_518 : vec3<f32> = (vec3<f32>(x_515.x, x_515.z, x_515.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_519 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_518.x, x_518.y, x_518.z, x_519.w);
    let x_524 : vec4<f32> = u_xlat11;
    let x_526 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_524.x, x_524.y, x_524.z));
    u_xlat11 = x_526;
    let x_527 : vec4<f32> = u_xlat9;
    let x_530 : vec3<f32> = (vec3<f32>(x_527.x, x_527.z, x_527.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_531 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_530.x, x_530.y, x_530.z, x_531.w);
    let x_536 : vec4<f32> = u_xlat9;
    let x_538 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_536.x, x_536.y, x_536.z));
    u_xlat9 = x_538;
    u_xlat5.w = 1.0f;
    let x_540 : vec4<f32> = u_xlat10;
    let x_541 : vec4<f32> = u_xlat5;
    u_xlat10.x = dot(x_540, x_541);
    let x_544 : vec4<f32> = u_xlat11;
    let x_545 : vec4<f32> = u_xlat5;
    u_xlat10.y = dot(x_544, x_545);
    let x_548 : vec4<f32> = u_xlat9;
    let x_549 : vec4<f32> = u_xlat5;
    u_xlat10.z = dot(x_548, x_549);
  } else {
    u_xlat5.w = 1.0f;
    let x_555 : vec4<f32> = x_38.unity_SHAr;
    let x_556 : vec4<f32> = u_xlat5;
    u_xlat10.x = dot(x_555, x_556);
    let x_561 : vec4<f32> = x_38.unity_SHAg;
    let x_562 : vec4<f32> = u_xlat5;
    u_xlat10.y = dot(x_561, x_562);
    let x_567 : vec4<f32> = x_38.unity_SHAb;
    let x_568 : vec4<f32> = u_xlat5;
    u_xlat10.z = dot(x_567, x_568);
  }
  let x_571 : vec4<f32> = u_xlat10;
  let x_575 : vec3<f32> = vs_TEXCOORD4;
  let x_576 : vec3<f32> = (vec3<f32>(x_571.x, x_571.y, x_571.z) + x_575);
  let x_577 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_576.x, x_576.y, x_576.z, x_577.w);
  let x_579 : vec4<f32> = u_xlat9;
  let x_582 : vec3<f32> = max(vec3<f32>(x_579.x, x_579.y, x_579.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_583 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_582.x, x_582.y, x_582.z, x_583.w);
  let x_587 : f32 = x_38.unity_SpecCube0_ProbePosition.w;
  u_xlatb50 = (0.0f < x_587);
  let x_589 : bool = u_xlatb50;
  if (x_589) {
    let x_592 : vec4<f32> = u_xlat7;
    let x_594 : vec4<f32> = u_xlat7;
    u_xlat50 = dot(vec3<f32>(x_592.x, x_592.y, x_592.z), vec3<f32>(x_594.x, x_594.y, x_594.z));
    let x_597 : f32 = u_xlat50;
    u_xlat50 = inverseSqrt(x_597);
    let x_599 : f32 = u_xlat50;
    let x_601 : vec4<f32> = u_xlat7;
    let x_603 : vec3<f32> = (vec3<f32>(x_599, x_599, x_599) * vec3<f32>(x_601.x, x_601.y, x_601.z));
    let x_604 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_603.x, x_603.y, x_603.z, x_604.w);
    let x_606 : vec4<f32> = u_xlat0;
    let x_611 : vec4<f32> = x_38.unity_SpecCube0_BoxMax;
    let x_613 : vec3<f32> = (-(vec3<f32>(x_606.x, x_606.y, x_606.z)) + vec3<f32>(x_611.x, x_611.y, x_611.z));
    let x_614 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_613.x, x_613.y, x_613.z, x_614.w);
    let x_616 : vec4<f32> = u_xlat11;
    let x_618 : vec4<f32> = u_xlat10;
    let x_620 : vec3<f32> = (vec3<f32>(x_616.x, x_616.y, x_616.z) / vec3<f32>(x_618.x, x_618.y, x_618.z));
    let x_621 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_620.x, x_620.y, x_620.z, x_621.w);
    let x_624 : vec4<f32> = u_xlat0;
    let x_629 : vec4<f32> = x_38.unity_SpecCube0_BoxMin;
    u_xlat12 = (-(vec3<f32>(x_624.x, x_624.y, x_624.z)) + vec3<f32>(x_629.x, x_629.y, x_629.z));
    let x_632 : vec3<f32> = u_xlat12;
    let x_633 : vec4<f32> = u_xlat10;
    u_xlat12 = (x_632 / vec3<f32>(x_633.x, x_633.y, x_633.z));
    let x_640 : vec4<f32> = u_xlat10;
    let x_643 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_640.x, x_640.y, x_640.z, x_640.x));
    u_xlatb13 = vec3<bool>(x_643.x, x_643.y, x_643.z);
    let x_646 : vec4<f32> = u_xlat11;
    hlslcc_movcTemp = x_646;
    let x_648 : bool = u_xlatb13.x;
    if (x_648) {
      let x_653 : f32 = u_xlat11.x;
      x_649 = x_653;
    } else {
      let x_656 : f32 = u_xlat12.x;
      x_649 = x_656;
    }
    let x_657 : f32 = x_649;
    hlslcc_movcTemp.x = x_657;
    let x_660 : bool = u_xlatb13.y;
    if (x_660) {
      let x_665 : f32 = u_xlat11.y;
      x_661 = x_665;
    } else {
      let x_668 : f32 = u_xlat12.y;
      x_661 = x_668;
    }
    let x_669 : f32 = x_661;
    hlslcc_movcTemp.y = x_669;
    let x_672 : bool = u_xlatb13.z;
    if (x_672) {
      let x_677 : f32 = u_xlat11.z;
      x_673 = x_677;
    } else {
      let x_680 : f32 = u_xlat12.z;
      x_673 = x_680;
    }
    let x_681 : f32 = x_673;
    hlslcc_movcTemp.z = x_681;
    let x_683 : vec4<f32> = hlslcc_movcTemp;
    u_xlat11 = x_683;
    let x_685 : f32 = u_xlat11.y;
    let x_687 : f32 = u_xlat11.x;
    u_xlat50 = min(x_685, x_687);
    let x_690 : f32 = u_xlat11.z;
    let x_691 : f32 = u_xlat50;
    u_xlat50 = min(x_690, x_691);
    let x_693 : vec4<f32> = u_xlat0;
    let x_696 : vec4<f32> = x_38.unity_SpecCube0_ProbePosition;
    let x_699 : vec3<f32> = (vec3<f32>(x_693.x, x_693.y, x_693.z) + -(vec3<f32>(x_696.x, x_696.y, x_696.z)));
    let x_700 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_699.x, x_699.y, x_699.z, x_700.w);
    let x_702 : vec4<f32> = u_xlat10;
    let x_704 : f32 = u_xlat50;
    let x_707 : vec4<f32> = u_xlat11;
    let x_709 : vec3<f32> = ((vec3<f32>(x_702.x, x_702.y, x_702.z) * vec3<f32>(x_704, x_704, x_704)) + vec3<f32>(x_707.x, x_707.y, x_707.z));
    let x_710 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_709.x, x_709.y, x_709.z, x_710.w);
  } else {
    let x_713 : vec4<f32> = u_xlat7;
    let x_714 : vec3<f32> = vec3<f32>(x_713.x, x_713.y, x_713.z);
    let x_715 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_714.x, x_714.y, x_714.z, x_715.w);
  }
  let x_718 : f32 = u_xlat6.z;
  u_xlat50 = ((-(x_718) * 0.699999988f) + 1.700000048f);
  let x_724 : f32 = u_xlat50;
  let x_726 : f32 = u_xlat6.z;
  u_xlat50 = (x_724 * x_726);
  let x_728 : f32 = u_xlat50;
  u_xlat50 = (x_728 * 6.0f);
  let x_739 : vec4<f32> = u_xlat10;
  let x_741 : f32 = u_xlat50;
  let x_742 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_739.x, x_739.y, x_739.z), x_741);
  u_xlat10 = x_742;
  let x_744 : f32 = u_xlat10.w;
  u_xlat51 = (x_744 + -1.0f);
  let x_748 : f32 = x_38.unity_SpecCube0_HDR.w;
  let x_749 : f32 = u_xlat51;
  u_xlat51 = ((x_748 * x_749) + 1.0f);
  let x_752 : f32 = u_xlat51;
  u_xlat51 = log2(x_752);
  let x_754 : f32 = u_xlat51;
  let x_756 : f32 = x_38.unity_SpecCube0_HDR.y;
  u_xlat51 = (x_754 * x_756);
  let x_758 : f32 = u_xlat51;
  u_xlat51 = exp2(x_758);
  let x_760 : f32 = u_xlat51;
  let x_762 : f32 = x_38.unity_SpecCube0_HDR.x;
  u_xlat51 = (x_760 * x_762);
  let x_764 : vec4<f32> = u_xlat10;
  let x_766 : f32 = u_xlat51;
  let x_768 : vec3<f32> = (vec3<f32>(x_764.x, x_764.y, x_764.z) * vec3<f32>(x_766, x_766, x_766));
  let x_769 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_768.x, x_768.y, x_768.z, x_769.w);
  let x_773 : f32 = x_38.unity_SpecCube0_BoxMin.w;
  u_xlatb20 = (x_773 < 0.999989986f);
  let x_776 : bool = u_xlatb20;
  if (x_776) {
    let x_781 : f32 = x_38.unity_SpecCube1_ProbePosition.w;
    u_xlatb20 = (0.0f < x_781);
    let x_783 : bool = u_xlatb20;
    if (x_783) {
      let x_786 : vec4<f32> = u_xlat7;
      let x_788 : vec4<f32> = u_xlat7;
      u_xlat20 = dot(vec3<f32>(x_786.x, x_786.y, x_786.z), vec3<f32>(x_788.x, x_788.y, x_788.z));
      let x_791 : f32 = u_xlat20;
      u_xlat20 = inverseSqrt(x_791);
      let x_793 : f32 = u_xlat20;
      let x_795 : vec4<f32> = u_xlat7;
      u_xlat12 = (vec3<f32>(x_793, x_793, x_793) * vec3<f32>(x_795.x, x_795.y, x_795.z));
      let x_799 : vec4<f32> = u_xlat0;
      let x_804 : vec4<f32> = x_38.unity_SpecCube1_BoxMax;
      u_xlat13 = (-(vec3<f32>(x_799.x, x_799.y, x_799.z)) + vec3<f32>(x_804.x, x_804.y, x_804.z));
      let x_807 : vec3<f32> = u_xlat13;
      let x_808 : vec3<f32> = u_xlat12;
      u_xlat13 = (x_807 / x_808);
      let x_811 : vec4<f32> = u_xlat0;
      let x_816 : vec4<f32> = x_38.unity_SpecCube1_BoxMin;
      u_xlat14 = (-(vec3<f32>(x_811.x, x_811.y, x_811.z)) + vec3<f32>(x_816.x, x_816.y, x_816.z));
      let x_819 : vec3<f32> = u_xlat14;
      let x_820 : vec3<f32> = u_xlat12;
      u_xlat14 = (x_819 / x_820);
      let x_823 : vec3<f32> = u_xlat12;
      let x_825 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_823.x, x_823.y, x_823.z, x_823.x));
      u_xlatb15 = vec3<bool>(x_825.x, x_825.y, x_825.z);
      let x_828 : vec3<f32> = u_xlat13;
      hlslcc_movcTemp_1 = x_828;
      let x_830 : bool = u_xlatb15.x;
      if (x_830) {
        let x_835 : f32 = u_xlat13.x;
        x_831 = x_835;
      } else {
        let x_838 : f32 = u_xlat14.x;
        x_831 = x_838;
      }
      let x_839 : f32 = x_831;
      hlslcc_movcTemp_1.x = x_839;
      let x_842 : bool = u_xlatb15.y;
      if (x_842) {
        let x_847 : f32 = u_xlat13.y;
        x_843 = x_847;
      } else {
        let x_850 : f32 = u_xlat14.y;
        x_843 = x_850;
      }
      let x_851 : f32 = x_843;
      hlslcc_movcTemp_1.y = x_851;
      let x_854 : bool = u_xlatb15.z;
      if (x_854) {
        let x_859 : f32 = u_xlat13.z;
        x_855 = x_859;
      } else {
        let x_862 : f32 = u_xlat14.z;
        x_855 = x_862;
      }
      let x_863 : f32 = x_855;
      hlslcc_movcTemp_1.z = x_863;
      let x_865 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat13 = x_865;
      let x_867 : f32 = u_xlat13.y;
      let x_869 : f32 = u_xlat13.x;
      u_xlat20 = min(x_867, x_869);
      let x_872 : f32 = u_xlat13.z;
      let x_873 : f32 = u_xlat20;
      u_xlat20 = min(x_872, x_873);
      let x_875 : vec4<f32> = u_xlat0;
      let x_878 : vec4<f32> = x_38.unity_SpecCube1_ProbePosition;
      let x_881 : vec3<f32> = (vec3<f32>(x_875.x, x_875.y, x_875.z) + -(vec3<f32>(x_878.x, x_878.y, x_878.z)));
      let x_882 : vec4<f32> = u_xlat0;
      u_xlat0 = vec4<f32>(x_881.x, x_881.y, x_881.z, x_882.w);
      let x_884 : vec3<f32> = u_xlat12;
      let x_885 : f32 = u_xlat20;
      let x_888 : vec4<f32> = u_xlat0;
      let x_890 : vec3<f32> = ((x_884 * vec3<f32>(x_885, x_885, x_885)) + vec3<f32>(x_888.x, x_888.y, x_888.z));
      let x_891 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_890.x, x_890.y, x_890.z, x_891.w);
    }
    let x_897 : vec4<f32> = u_xlat7;
    let x_899 : f32 = u_xlat50;
    let x_900 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_897.x, x_897.y, x_897.z), x_899);
    u_xlat7 = x_900;
    let x_902 : f32 = u_xlat7.w;
    u_xlat0.x = (x_902 + -1.0f);
    let x_907 : f32 = x_38.unity_SpecCube1_HDR.w;
    let x_909 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_907 * x_909) + 1.0f);
    let x_914 : f32 = u_xlat0.x;
    u_xlat0.x = log2(x_914);
    let x_918 : f32 = u_xlat0.x;
    let x_920 : f32 = x_38.unity_SpecCube1_HDR.y;
    u_xlat0.x = (x_918 * x_920);
    let x_924 : f32 = u_xlat0.x;
    u_xlat0.x = exp2(x_924);
    let x_928 : f32 = u_xlat0.x;
    let x_930 : f32 = x_38.unity_SpecCube1_HDR.x;
    u_xlat0.x = (x_928 * x_930);
    let x_933 : vec4<f32> = u_xlat7;
    let x_935 : vec4<f32> = u_xlat0;
    let x_937 : vec3<f32> = (vec3<f32>(x_933.x, x_933.y, x_933.z) * vec3<f32>(x_935.x, x_935.x, x_935.x));
    let x_938 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_937.x, x_937.y, x_937.z, x_938.w);
    let x_940 : f32 = u_xlat51;
    let x_942 : vec4<f32> = u_xlat10;
    let x_945 : vec4<f32> = u_xlat0;
    let x_948 : vec3<f32> = ((vec3<f32>(x_940, x_940, x_940) * vec3<f32>(x_942.x, x_942.y, x_942.z)) + -(vec3<f32>(x_945.x, x_945.y, x_945.z)));
    let x_949 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_948.x, x_948.y, x_948.z, x_949.w);
    let x_952 : vec4<f32> = x_38.unity_SpecCube0_BoxMin;
    let x_954 : vec4<f32> = u_xlat7;
    let x_957 : vec4<f32> = u_xlat0;
    let x_959 : vec3<f32> = ((vec3<f32>(x_952.w, x_952.w, x_952.w) * vec3<f32>(x_954.x, x_954.y, x_954.z)) + vec3<f32>(x_957.x, x_957.y, x_957.z));
    let x_960 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_959.x, x_959.y, x_959.z, x_960.w);
  }
  let x_962 : f32 = u_xlat49;
  let x_964 : vec4<f32> = u_xlat11;
  let x_966 : vec3<f32> = (vec3<f32>(x_962, x_962, x_962) * vec3<f32>(x_964.x, x_964.y, x_964.z));
  let x_967 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_966.x, x_966.y, x_966.z, x_967.w);
  let x_969 : vec3<f32> = u_xlat3;
  let x_971 : vec3<f32> = (x_969 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_972 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_971.x, x_971.y, x_971.z, x_972.w);
  let x_974 : vec4<f32> = u_xlat4;
  let x_976 : vec4<f32> = u_xlat7;
  let x_981 : vec3<f32> = ((vec3<f32>(x_974.x, x_974.x, x_974.x) * vec3<f32>(x_976.x, x_976.y, x_976.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_982 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_981.x, x_981.y, x_981.z, x_982.w);
  let x_985 : f32 = u_xlat4.x;
  u_xlat50 = ((-(x_985) * 0.959999979f) + 0.959999979f);
  let x_990 : f32 = u_xlat50;
  let x_992 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_990, x_990, x_990) * x_992);
  let x_994 : vec4<f32> = u_xlat1;
  let x_996 : f32 = u_xlat48;
  let x_1000 : vec4<f32> = x_38.x_WorldSpaceLightPos0;
  let x_1002 : vec3<f32> = ((vec3<f32>(x_994.x, x_994.y, x_994.z) * vec3<f32>(x_996, x_996, x_996)) + vec3<f32>(x_1000.x, x_1000.y, x_1000.z));
  let x_1003 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1002.x, x_1002.y, x_1002.z, x_1003.w);
  let x_1005 : vec4<f32> = u_xlat1;
  let x_1007 : vec4<f32> = u_xlat1;
  u_xlat48 = dot(vec3<f32>(x_1005.x, x_1005.y, x_1005.z), vec3<f32>(x_1007.x, x_1007.y, x_1007.z));
  let x_1010 : f32 = u_xlat48;
  u_xlat48 = max(x_1010, 0.001f);
  let x_1013 : f32 = u_xlat48;
  u_xlat48 = inverseSqrt(x_1013);
  let x_1015 : f32 = u_xlat48;
  let x_1017 : vec4<f32> = u_xlat1;
  let x_1019 : vec3<f32> = (vec3<f32>(x_1015, x_1015, x_1015) * vec3<f32>(x_1017.x, x_1017.y, x_1017.z));
  let x_1020 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1019.x, x_1019.y, x_1019.z, x_1020.w);
  let x_1022 : vec4<f32> = u_xlat5;
  let x_1024 : vec4<f32> = u_xlat2;
  u_xlat48 = dot(vec3<f32>(x_1022.x, x_1022.y, x_1022.z), vec3<f32>(x_1024.x, x_1024.y, x_1024.z));
  let x_1027 : vec4<f32> = u_xlat5;
  let x_1030 : vec4<f32> = x_38.x_WorldSpaceLightPos0;
  u_xlat2.x = dot(vec3<f32>(x_1027.x, x_1027.y, x_1027.z), vec3<f32>(x_1030.x, x_1030.y, x_1030.z));
  let x_1035 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1035, 0.0f, 1.0f);
  let x_1039 : vec4<f32> = u_xlat5;
  let x_1041 : vec4<f32> = u_xlat1;
  u_xlat18 = dot(vec3<f32>(x_1039.x, x_1039.y, x_1039.z), vec3<f32>(x_1041.x, x_1041.y, x_1041.z));
  let x_1044 : f32 = u_xlat18;
  u_xlat18 = clamp(x_1044, 0.0f, 1.0f);
  let x_1047 : vec4<f32> = x_38.x_WorldSpaceLightPos0;
  let x_1049 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_1047.x, x_1047.y, x_1047.z), vec3<f32>(x_1049.x, x_1049.y, x_1049.z));
  let x_1054 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1054, 0.0f, 1.0f);
  let x_1059 : f32 = u_xlat1.x;
  let x_1061 : f32 = u_xlat1.x;
  u_xlat17 = (x_1059 * x_1061);
  let x_1063 : f32 = u_xlat17;
  let x_1065 : vec4<f32> = u_xlat6;
  u_xlat17 = dot(vec2<f32>(x_1063, x_1063), vec2<f32>(x_1065.z, x_1065.z));
  let x_1068 : f32 = u_xlat17;
  u_xlat17 = (x_1068 + -0.5f);
  let x_1073 : f32 = u_xlat2.x;
  u_xlat33 = (-(x_1073) + 1.0f);
  let x_1077 : f32 = u_xlat33;
  let x_1078 : f32 = u_xlat33;
  u_xlat34 = (x_1077 * x_1078);
  let x_1080 : f32 = u_xlat34;
  let x_1081 : f32 = u_xlat34;
  u_xlat34 = (x_1080 * x_1081);
  let x_1083 : f32 = u_xlat33;
  let x_1084 : f32 = u_xlat34;
  u_xlat33 = (x_1083 * x_1084);
  let x_1086 : f32 = u_xlat17;
  let x_1087 : f32 = u_xlat33;
  u_xlat33 = ((x_1086 * x_1087) + 1.0f);
  let x_1090 : f32 = u_xlat48;
  u_xlat34 = (-(abs(x_1090)) + 1.0f);
  let x_1094 : f32 = u_xlat34;
  let x_1095 : f32 = u_xlat34;
  u_xlat51 = (x_1094 * x_1095);
  let x_1097 : f32 = u_xlat51;
  let x_1098 : f32 = u_xlat51;
  u_xlat51 = (x_1097 * x_1098);
  let x_1100 : f32 = u_xlat34;
  let x_1101 : f32 = u_xlat51;
  u_xlat34 = (x_1100 * x_1101);
  let x_1103 : f32 = u_xlat17;
  let x_1104 : f32 = u_xlat34;
  u_xlat17 = ((x_1103 * x_1104) + 1.0f);
  let x_1107 : f32 = u_xlat17;
  let x_1108 : f32 = u_xlat33;
  u_xlat17 = (x_1107 * x_1108);
  let x_1111 : f32 = u_xlat2.x;
  let x_1112 : f32 = u_xlat17;
  u_xlat17 = (x_1111 * x_1112);
  let x_1115 : f32 = u_xlat6.z;
  let x_1117 : f32 = u_xlat6.z;
  u_xlat33 = (x_1115 * x_1117);
  let x_1119 : f32 = u_xlat33;
  u_xlat33 = max(x_1119, 0.002f);
  let x_1122 : f32 = u_xlat33;
  u_xlat51 = (-(x_1122) + 1.0f);
  let x_1125 : f32 = u_xlat48;
  let x_1127 : f32 = u_xlat51;
  let x_1129 : f32 = u_xlat33;
  u_xlat4.x = ((abs(x_1125) * x_1127) + x_1129);
  let x_1133 : f32 = u_xlat2.x;
  let x_1134 : f32 = u_xlat51;
  let x_1136 : f32 = u_xlat33;
  u_xlat51 = ((x_1133 * x_1134) + x_1136);
  let x_1138 : f32 = u_xlat48;
  let x_1140 : f32 = u_xlat51;
  u_xlat48 = (abs(x_1138) * x_1140);
  let x_1143 : f32 = u_xlat2.x;
  let x_1145 : f32 = u_xlat4.x;
  let x_1147 : f32 = u_xlat48;
  u_xlat48 = ((x_1143 * x_1145) + x_1147);
  let x_1149 : f32 = u_xlat48;
  u_xlat48 = (x_1149 + 0.00001f);
  let x_1152 : f32 = u_xlat48;
  u_xlat48 = (0.5f / x_1152);
  let x_1154 : f32 = u_xlat33;
  let x_1155 : f32 = u_xlat33;
  u_xlat51 = (x_1154 * x_1155);
  let x_1157 : f32 = u_xlat18;
  let x_1158 : f32 = u_xlat51;
  let x_1160 : f32 = u_xlat18;
  u_xlat4.x = ((x_1157 * x_1158) + -(x_1160));
  let x_1165 : f32 = u_xlat4.x;
  let x_1166 : f32 = u_xlat18;
  u_xlat18 = ((x_1165 * x_1166) + 1.0f);
  let x_1169 : f32 = u_xlat51;
  u_xlat51 = (x_1169 * 0.318309873f);
  let x_1172 : f32 = u_xlat18;
  let x_1173 : f32 = u_xlat18;
  u_xlat18 = ((x_1172 * x_1173) + 0.0000001f);
  let x_1177 : f32 = u_xlat51;
  let x_1178 : f32 = u_xlat18;
  u_xlat18 = (x_1177 / x_1178);
  let x_1180 : f32 = u_xlat48;
  let x_1181 : f32 = u_xlat18;
  u_xlat48 = (x_1180 * x_1181);
  let x_1184 : f32 = u_xlat2.x;
  let x_1185 : f32 = u_xlat48;
  u_xlat48 = (x_1184 * x_1185);
  let x_1187 : f32 = u_xlat48;
  u_xlat48 = (x_1187 * 3.141592741f);
  let x_1190 : f32 = u_xlat48;
  u_xlat48 = max(x_1190, 0.0f);
  let x_1192 : f32 = u_xlat33;
  let x_1193 : f32 = u_xlat33;
  u_xlat33 = ((x_1192 * x_1193) + 1.0f);
  let x_1196 : f32 = u_xlat33;
  u_xlat1.z = (1.0f / x_1196);
  let x_1199 : vec4<f32> = u_xlat7;
  let x_1201 : vec4<f32> = u_xlat7;
  u_xlat2.x = dot(vec3<f32>(x_1199.x, x_1199.y, x_1199.z), vec3<f32>(x_1201.x, x_1201.y, x_1201.z));
  let x_1207 : f32 = u_xlat2.x;
  u_xlatb2 = !((x_1207 == 0.0f));
  let x_1209 : bool = u_xlatb2;
  u_xlat2.x = select(0.0f, 1.0f, x_1209);
  let x_1212 : f32 = u_xlat48;
  let x_1214 : f32 = u_xlat2.x;
  u_xlat48 = (x_1212 * x_1214);
  let x_1216 : f32 = u_xlat50;
  let x_1219 : f32 = u_xlat4.w;
  u_xlat2.x = (-(x_1216) + x_1219);
  let x_1223 : f32 = u_xlat2.x;
  u_xlat2.x = (x_1223 + 1.0f);
  let x_1227 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1227, 0.0f, 1.0f);
  let x_1230 : f32 = u_xlat17;
  let x_1232 : vec3<f32> = u_xlat8;
  let x_1233 : vec3<f32> = (vec3<f32>(x_1230, x_1230, x_1230) * x_1232);
  let x_1234 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1233.x, x_1233.y, x_1233.z, x_1234.w);
  let x_1236 : vec4<f32> = u_xlat9;
  let x_1238 : f32 = u_xlat49;
  let x_1241 : vec4<f32> = u_xlat4;
  let x_1243 : vec3<f32> = ((vec3<f32>(x_1236.x, x_1236.y, x_1236.z) * vec3<f32>(x_1238, x_1238, x_1238)) + vec3<f32>(x_1241.x, x_1241.y, x_1241.z));
  let x_1244 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1243.x, x_1243.y, x_1243.z, x_1244.w);
  let x_1246 : vec3<f32> = u_xlat8;
  let x_1247 : f32 = u_xlat48;
  let x_1249 : vec3<f32> = (x_1246 * vec3<f32>(x_1247, x_1247, x_1247));
  let x_1250 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1249.x, x_1249.y, x_1249.z, x_1250.w);
  let x_1253 : f32 = u_xlat1.x;
  u_xlat0.w = (-(x_1253) + 1.0f);
  let x_1258 : f32 = u_xlat0.w;
  let x_1260 : f32 = u_xlat0.w;
  u_xlat1.x = (x_1258 * x_1260);
  let x_1264 : f32 = u_xlat1.x;
  let x_1266 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1264 * x_1266);
  let x_1269 : vec4<f32> = u_xlat0;
  let x_1270 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_1269 * vec4<f32>(x_1270.z, x_1270.z, x_1270.z, x_1270.x));
  let x_1273 : vec4<f32> = u_xlat7;
  let x_1276 : vec3<f32> = (-(vec3<f32>(x_1273.x, x_1273.y, x_1273.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1277 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1276.x, x_1276.y, x_1277.z, x_1276.z);
  let x_1279 : vec4<f32> = u_xlat1;
  let x_1281 : vec4<f32> = u_xlat0;
  let x_1284 : vec4<f32> = u_xlat7;
  let x_1286 : vec3<f32> = ((vec3<f32>(x_1279.x, x_1279.y, x_1279.w) * vec3<f32>(x_1281.w, x_1281.w, x_1281.w)) + vec3<f32>(x_1284.x, x_1284.y, x_1284.z));
  let x_1287 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1286.x, x_1286.y, x_1287.z, x_1286.z);
  let x_1289 : vec4<f32> = u_xlat1;
  let x_1291 : vec4<f32> = u_xlat5;
  let x_1293 : vec3<f32> = (vec3<f32>(x_1289.x, x_1289.y, x_1289.w) * vec3<f32>(x_1291.x, x_1291.y, x_1291.z));
  let x_1294 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1293.x, x_1293.y, x_1294.z, x_1293.z);
  let x_1296 : vec3<f32> = u_xlat3;
  let x_1297 : vec4<f32> = u_xlat4;
  let x_1300 : vec4<f32> = u_xlat1;
  let x_1302 : vec3<f32> = ((x_1296 * vec3<f32>(x_1297.x, x_1297.y, x_1297.z)) + vec3<f32>(x_1300.x, x_1300.y, x_1300.w));
  let x_1303 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1302.x, x_1302.y, x_1303.z, x_1302.z);
  let x_1305 : vec4<f32> = u_xlat7;
  let x_1308 : vec4<f32> = u_xlat2;
  let x_1310 : vec3<f32> = (-(vec3<f32>(x_1305.x, x_1305.y, x_1305.z)) + vec3<f32>(x_1308.x, x_1308.x, x_1308.x));
  let x_1311 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1310.x, x_1310.y, x_1311.z, x_1310.z);
  let x_1313 : f32 = u_xlat34;
  let x_1315 : vec4<f32> = u_xlat2;
  let x_1318 : vec4<f32> = u_xlat7;
  let x_1320 : vec3<f32> = ((vec3<f32>(x_1313, x_1313, x_1313) * vec3<f32>(x_1315.x, x_1315.y, x_1315.w)) + vec3<f32>(x_1318.x, x_1318.y, x_1318.z));
  let x_1321 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1320.x, x_1320.y, x_1320.z, x_1321.w);
  let x_1323 : vec4<f32> = u_xlat0;
  let x_1325 : vec4<f32> = u_xlat2;
  let x_1328 : vec4<f32> = u_xlat1;
  let x_1330 : vec3<f32> = ((vec3<f32>(x_1323.x, x_1323.y, x_1323.z) * vec3<f32>(x_1325.x, x_1325.y, x_1325.z)) + vec3<f32>(x_1328.x, x_1328.y, x_1328.w));
  let x_1331 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1330.x, x_1330.y, x_1330.z, x_1331.w);
  let x_1335 : vec4<f32> = u_xlat6;
  let x_1337 : vec4<f32> = u_xlat0;
  let x_1339 : vec3<f32> = (vec3<f32>(x_1335.x, x_1335.y, x_1335.w) + vec3<f32>(x_1337.x, x_1337.y, x_1337.z));
  let x_1340 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1339.x, x_1339.y, x_1339.z, x_1340.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD4_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

