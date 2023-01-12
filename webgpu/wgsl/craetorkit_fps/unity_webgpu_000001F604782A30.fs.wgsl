struct PGlobals {
  x_Time : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
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

var<private> vs_TEXCOORD5 : f32;

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
  var x_650 : f32;
  var x_662 : f32;
  var x_674 : f32;
  var u_xlatb20 : bool;
  var u_xlat13 : vec3<f32>;
  var u_xlat14 : vec3<f32>;
  var u_xlatb15 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_832 : f32;
  var x_844 : f32;
  var x_856 : f32;
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
    let x_556 : vec4<f32> = x_38.unity_SHAr;
    let x_557 : vec4<f32> = u_xlat5;
    u_xlat10.x = dot(x_556, x_557);
    let x_562 : vec4<f32> = x_38.unity_SHAg;
    let x_563 : vec4<f32> = u_xlat5;
    u_xlat10.y = dot(x_562, x_563);
    let x_568 : vec4<f32> = x_38.unity_SHAb;
    let x_569 : vec4<f32> = u_xlat5;
    u_xlat10.z = dot(x_568, x_569);
  }
  let x_572 : vec4<f32> = u_xlat10;
  let x_576 : vec3<f32> = vs_TEXCOORD4;
  let x_577 : vec3<f32> = (vec3<f32>(x_572.x, x_572.y, x_572.z) + x_576);
  let x_578 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_577.x, x_577.y, x_577.z, x_578.w);
  let x_580 : vec4<f32> = u_xlat9;
  let x_583 : vec3<f32> = max(vec3<f32>(x_580.x, x_580.y, x_580.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_584 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_583.x, x_583.y, x_583.z, x_584.w);
  let x_588 : f32 = x_38.unity_SpecCube0_ProbePosition.w;
  u_xlatb50 = (0.0f < x_588);
  let x_590 : bool = u_xlatb50;
  if (x_590) {
    let x_593 : vec4<f32> = u_xlat7;
    let x_595 : vec4<f32> = u_xlat7;
    u_xlat50 = dot(vec3<f32>(x_593.x, x_593.y, x_593.z), vec3<f32>(x_595.x, x_595.y, x_595.z));
    let x_598 : f32 = u_xlat50;
    u_xlat50 = inverseSqrt(x_598);
    let x_600 : f32 = u_xlat50;
    let x_602 : vec4<f32> = u_xlat7;
    let x_604 : vec3<f32> = (vec3<f32>(x_600, x_600, x_600) * vec3<f32>(x_602.x, x_602.y, x_602.z));
    let x_605 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_604.x, x_604.y, x_604.z, x_605.w);
    let x_607 : vec4<f32> = u_xlat0;
    let x_612 : vec4<f32> = x_38.unity_SpecCube0_BoxMax;
    let x_614 : vec3<f32> = (-(vec3<f32>(x_607.x, x_607.y, x_607.z)) + vec3<f32>(x_612.x, x_612.y, x_612.z));
    let x_615 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_614.x, x_614.y, x_614.z, x_615.w);
    let x_617 : vec4<f32> = u_xlat11;
    let x_619 : vec4<f32> = u_xlat10;
    let x_621 : vec3<f32> = (vec3<f32>(x_617.x, x_617.y, x_617.z) / vec3<f32>(x_619.x, x_619.y, x_619.z));
    let x_622 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_621.x, x_621.y, x_621.z, x_622.w);
    let x_625 : vec4<f32> = u_xlat0;
    let x_630 : vec4<f32> = x_38.unity_SpecCube0_BoxMin;
    u_xlat12 = (-(vec3<f32>(x_625.x, x_625.y, x_625.z)) + vec3<f32>(x_630.x, x_630.y, x_630.z));
    let x_633 : vec3<f32> = u_xlat12;
    let x_634 : vec4<f32> = u_xlat10;
    u_xlat12 = (x_633 / vec3<f32>(x_634.x, x_634.y, x_634.z));
    let x_641 : vec4<f32> = u_xlat10;
    let x_644 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_641.x, x_641.y, x_641.z, x_641.x));
    u_xlatb13 = vec3<bool>(x_644.x, x_644.y, x_644.z);
    let x_647 : vec4<f32> = u_xlat11;
    hlslcc_movcTemp = x_647;
    let x_649 : bool = u_xlatb13.x;
    if (x_649) {
      let x_654 : f32 = u_xlat11.x;
      x_650 = x_654;
    } else {
      let x_657 : f32 = u_xlat12.x;
      x_650 = x_657;
    }
    let x_658 : f32 = x_650;
    hlslcc_movcTemp.x = x_658;
    let x_661 : bool = u_xlatb13.y;
    if (x_661) {
      let x_666 : f32 = u_xlat11.y;
      x_662 = x_666;
    } else {
      let x_669 : f32 = u_xlat12.y;
      x_662 = x_669;
    }
    let x_670 : f32 = x_662;
    hlslcc_movcTemp.y = x_670;
    let x_673 : bool = u_xlatb13.z;
    if (x_673) {
      let x_678 : f32 = u_xlat11.z;
      x_674 = x_678;
    } else {
      let x_681 : f32 = u_xlat12.z;
      x_674 = x_681;
    }
    let x_682 : f32 = x_674;
    hlslcc_movcTemp.z = x_682;
    let x_684 : vec4<f32> = hlslcc_movcTemp;
    u_xlat11 = x_684;
    let x_686 : f32 = u_xlat11.y;
    let x_688 : f32 = u_xlat11.x;
    u_xlat50 = min(x_686, x_688);
    let x_691 : f32 = u_xlat11.z;
    let x_692 : f32 = u_xlat50;
    u_xlat50 = min(x_691, x_692);
    let x_694 : vec4<f32> = u_xlat0;
    let x_697 : vec4<f32> = x_38.unity_SpecCube0_ProbePosition;
    let x_700 : vec3<f32> = (vec3<f32>(x_694.x, x_694.y, x_694.z) + -(vec3<f32>(x_697.x, x_697.y, x_697.z)));
    let x_701 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_700.x, x_700.y, x_700.z, x_701.w);
    let x_703 : vec4<f32> = u_xlat10;
    let x_705 : f32 = u_xlat50;
    let x_708 : vec4<f32> = u_xlat11;
    let x_710 : vec3<f32> = ((vec3<f32>(x_703.x, x_703.y, x_703.z) * vec3<f32>(x_705, x_705, x_705)) + vec3<f32>(x_708.x, x_708.y, x_708.z));
    let x_711 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_710.x, x_710.y, x_710.z, x_711.w);
  } else {
    let x_714 : vec4<f32> = u_xlat7;
    let x_715 : vec3<f32> = vec3<f32>(x_714.x, x_714.y, x_714.z);
    let x_716 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_715.x, x_715.y, x_715.z, x_716.w);
  }
  let x_719 : f32 = u_xlat6.z;
  u_xlat50 = ((-(x_719) * 0.699999988f) + 1.700000048f);
  let x_725 : f32 = u_xlat50;
  let x_727 : f32 = u_xlat6.z;
  u_xlat50 = (x_725 * x_727);
  let x_729 : f32 = u_xlat50;
  u_xlat50 = (x_729 * 6.0f);
  let x_740 : vec4<f32> = u_xlat10;
  let x_742 : f32 = u_xlat50;
  let x_743 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_740.x, x_740.y, x_740.z), x_742);
  u_xlat10 = x_743;
  let x_745 : f32 = u_xlat10.w;
  u_xlat51 = (x_745 + -1.0f);
  let x_749 : f32 = x_38.unity_SpecCube0_HDR.w;
  let x_750 : f32 = u_xlat51;
  u_xlat51 = ((x_749 * x_750) + 1.0f);
  let x_753 : f32 = u_xlat51;
  u_xlat51 = log2(x_753);
  let x_755 : f32 = u_xlat51;
  let x_757 : f32 = x_38.unity_SpecCube0_HDR.y;
  u_xlat51 = (x_755 * x_757);
  let x_759 : f32 = u_xlat51;
  u_xlat51 = exp2(x_759);
  let x_761 : f32 = u_xlat51;
  let x_763 : f32 = x_38.unity_SpecCube0_HDR.x;
  u_xlat51 = (x_761 * x_763);
  let x_765 : vec4<f32> = u_xlat10;
  let x_767 : f32 = u_xlat51;
  let x_769 : vec3<f32> = (vec3<f32>(x_765.x, x_765.y, x_765.z) * vec3<f32>(x_767, x_767, x_767));
  let x_770 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_769.x, x_769.y, x_769.z, x_770.w);
  let x_774 : f32 = x_38.unity_SpecCube0_BoxMin.w;
  u_xlatb20 = (x_774 < 0.999989986f);
  let x_777 : bool = u_xlatb20;
  if (x_777) {
    let x_782 : f32 = x_38.unity_SpecCube1_ProbePosition.w;
    u_xlatb20 = (0.0f < x_782);
    let x_784 : bool = u_xlatb20;
    if (x_784) {
      let x_787 : vec4<f32> = u_xlat7;
      let x_789 : vec4<f32> = u_xlat7;
      u_xlat20 = dot(vec3<f32>(x_787.x, x_787.y, x_787.z), vec3<f32>(x_789.x, x_789.y, x_789.z));
      let x_792 : f32 = u_xlat20;
      u_xlat20 = inverseSqrt(x_792);
      let x_794 : f32 = u_xlat20;
      let x_796 : vec4<f32> = u_xlat7;
      u_xlat12 = (vec3<f32>(x_794, x_794, x_794) * vec3<f32>(x_796.x, x_796.y, x_796.z));
      let x_800 : vec4<f32> = u_xlat0;
      let x_805 : vec4<f32> = x_38.unity_SpecCube1_BoxMax;
      u_xlat13 = (-(vec3<f32>(x_800.x, x_800.y, x_800.z)) + vec3<f32>(x_805.x, x_805.y, x_805.z));
      let x_808 : vec3<f32> = u_xlat13;
      let x_809 : vec3<f32> = u_xlat12;
      u_xlat13 = (x_808 / x_809);
      let x_812 : vec4<f32> = u_xlat0;
      let x_817 : vec4<f32> = x_38.unity_SpecCube1_BoxMin;
      u_xlat14 = (-(vec3<f32>(x_812.x, x_812.y, x_812.z)) + vec3<f32>(x_817.x, x_817.y, x_817.z));
      let x_820 : vec3<f32> = u_xlat14;
      let x_821 : vec3<f32> = u_xlat12;
      u_xlat14 = (x_820 / x_821);
      let x_824 : vec3<f32> = u_xlat12;
      let x_826 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_824.x, x_824.y, x_824.z, x_824.x));
      u_xlatb15 = vec3<bool>(x_826.x, x_826.y, x_826.z);
      let x_829 : vec3<f32> = u_xlat13;
      hlslcc_movcTemp_1 = x_829;
      let x_831 : bool = u_xlatb15.x;
      if (x_831) {
        let x_836 : f32 = u_xlat13.x;
        x_832 = x_836;
      } else {
        let x_839 : f32 = u_xlat14.x;
        x_832 = x_839;
      }
      let x_840 : f32 = x_832;
      hlslcc_movcTemp_1.x = x_840;
      let x_843 : bool = u_xlatb15.y;
      if (x_843) {
        let x_848 : f32 = u_xlat13.y;
        x_844 = x_848;
      } else {
        let x_851 : f32 = u_xlat14.y;
        x_844 = x_851;
      }
      let x_852 : f32 = x_844;
      hlslcc_movcTemp_1.y = x_852;
      let x_855 : bool = u_xlatb15.z;
      if (x_855) {
        let x_860 : f32 = u_xlat13.z;
        x_856 = x_860;
      } else {
        let x_863 : f32 = u_xlat14.z;
        x_856 = x_863;
      }
      let x_864 : f32 = x_856;
      hlslcc_movcTemp_1.z = x_864;
      let x_866 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat13 = x_866;
      let x_868 : f32 = u_xlat13.y;
      let x_870 : f32 = u_xlat13.x;
      u_xlat20 = min(x_868, x_870);
      let x_873 : f32 = u_xlat13.z;
      let x_874 : f32 = u_xlat20;
      u_xlat20 = min(x_873, x_874);
      let x_876 : vec4<f32> = u_xlat0;
      let x_879 : vec4<f32> = x_38.unity_SpecCube1_ProbePosition;
      let x_882 : vec3<f32> = (vec3<f32>(x_876.x, x_876.y, x_876.z) + -(vec3<f32>(x_879.x, x_879.y, x_879.z)));
      let x_883 : vec4<f32> = u_xlat0;
      u_xlat0 = vec4<f32>(x_882.x, x_882.y, x_882.z, x_883.w);
      let x_885 : vec3<f32> = u_xlat12;
      let x_886 : f32 = u_xlat20;
      let x_889 : vec4<f32> = u_xlat0;
      let x_891 : vec3<f32> = ((x_885 * vec3<f32>(x_886, x_886, x_886)) + vec3<f32>(x_889.x, x_889.y, x_889.z));
      let x_892 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_891.x, x_891.y, x_891.z, x_892.w);
    }
    let x_898 : vec4<f32> = u_xlat7;
    let x_900 : f32 = u_xlat50;
    let x_901 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_898.x, x_898.y, x_898.z), x_900);
    u_xlat7 = x_901;
    let x_903 : f32 = u_xlat7.w;
    u_xlat0.x = (x_903 + -1.0f);
    let x_908 : f32 = x_38.unity_SpecCube1_HDR.w;
    let x_910 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_908 * x_910) + 1.0f);
    let x_915 : f32 = u_xlat0.x;
    u_xlat0.x = log2(x_915);
    let x_919 : f32 = u_xlat0.x;
    let x_921 : f32 = x_38.unity_SpecCube1_HDR.y;
    u_xlat0.x = (x_919 * x_921);
    let x_925 : f32 = u_xlat0.x;
    u_xlat0.x = exp2(x_925);
    let x_929 : f32 = u_xlat0.x;
    let x_931 : f32 = x_38.unity_SpecCube1_HDR.x;
    u_xlat0.x = (x_929 * x_931);
    let x_934 : vec4<f32> = u_xlat7;
    let x_936 : vec4<f32> = u_xlat0;
    let x_938 : vec3<f32> = (vec3<f32>(x_934.x, x_934.y, x_934.z) * vec3<f32>(x_936.x, x_936.x, x_936.x));
    let x_939 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_938.x, x_938.y, x_938.z, x_939.w);
    let x_941 : f32 = u_xlat51;
    let x_943 : vec4<f32> = u_xlat10;
    let x_946 : vec4<f32> = u_xlat0;
    let x_949 : vec3<f32> = ((vec3<f32>(x_941, x_941, x_941) * vec3<f32>(x_943.x, x_943.y, x_943.z)) + -(vec3<f32>(x_946.x, x_946.y, x_946.z)));
    let x_950 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_949.x, x_949.y, x_949.z, x_950.w);
    let x_953 : vec4<f32> = x_38.unity_SpecCube0_BoxMin;
    let x_955 : vec4<f32> = u_xlat7;
    let x_958 : vec4<f32> = u_xlat0;
    let x_960 : vec3<f32> = ((vec3<f32>(x_953.w, x_953.w, x_953.w) * vec3<f32>(x_955.x, x_955.y, x_955.z)) + vec3<f32>(x_958.x, x_958.y, x_958.z));
    let x_961 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_960.x, x_960.y, x_960.z, x_961.w);
  }
  let x_963 : f32 = u_xlat49;
  let x_965 : vec4<f32> = u_xlat11;
  let x_967 : vec3<f32> = (vec3<f32>(x_963, x_963, x_963) * vec3<f32>(x_965.x, x_965.y, x_965.z));
  let x_968 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_967.x, x_967.y, x_967.z, x_968.w);
  let x_970 : vec3<f32> = u_xlat3;
  let x_972 : vec3<f32> = (x_970 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_973 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_972.x, x_972.y, x_972.z, x_973.w);
  let x_975 : vec4<f32> = u_xlat4;
  let x_977 : vec4<f32> = u_xlat7;
  let x_982 : vec3<f32> = ((vec3<f32>(x_975.x, x_975.x, x_975.x) * vec3<f32>(x_977.x, x_977.y, x_977.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_983 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_982.x, x_982.y, x_982.z, x_983.w);
  let x_986 : f32 = u_xlat4.x;
  u_xlat50 = ((-(x_986) * 0.959999979f) + 0.959999979f);
  let x_991 : f32 = u_xlat50;
  let x_993 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_991, x_991, x_991) * x_993);
  let x_995 : vec4<f32> = u_xlat1;
  let x_997 : f32 = u_xlat48;
  let x_1001 : vec4<f32> = x_38.x_WorldSpaceLightPos0;
  let x_1003 : vec3<f32> = ((vec3<f32>(x_995.x, x_995.y, x_995.z) * vec3<f32>(x_997, x_997, x_997)) + vec3<f32>(x_1001.x, x_1001.y, x_1001.z));
  let x_1004 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1003.x, x_1003.y, x_1003.z, x_1004.w);
  let x_1006 : vec4<f32> = u_xlat1;
  let x_1008 : vec4<f32> = u_xlat1;
  u_xlat48 = dot(vec3<f32>(x_1006.x, x_1006.y, x_1006.z), vec3<f32>(x_1008.x, x_1008.y, x_1008.z));
  let x_1011 : f32 = u_xlat48;
  u_xlat48 = max(x_1011, 0.001f);
  let x_1014 : f32 = u_xlat48;
  u_xlat48 = inverseSqrt(x_1014);
  let x_1016 : f32 = u_xlat48;
  let x_1018 : vec4<f32> = u_xlat1;
  let x_1020 : vec3<f32> = (vec3<f32>(x_1016, x_1016, x_1016) * vec3<f32>(x_1018.x, x_1018.y, x_1018.z));
  let x_1021 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1020.x, x_1020.y, x_1020.z, x_1021.w);
  let x_1023 : vec4<f32> = u_xlat5;
  let x_1025 : vec4<f32> = u_xlat2;
  u_xlat48 = dot(vec3<f32>(x_1023.x, x_1023.y, x_1023.z), vec3<f32>(x_1025.x, x_1025.y, x_1025.z));
  let x_1028 : vec4<f32> = u_xlat5;
  let x_1031 : vec4<f32> = x_38.x_WorldSpaceLightPos0;
  u_xlat2.x = dot(vec3<f32>(x_1028.x, x_1028.y, x_1028.z), vec3<f32>(x_1031.x, x_1031.y, x_1031.z));
  let x_1036 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1036, 0.0f, 1.0f);
  let x_1040 : vec4<f32> = u_xlat5;
  let x_1042 : vec4<f32> = u_xlat1;
  u_xlat18 = dot(vec3<f32>(x_1040.x, x_1040.y, x_1040.z), vec3<f32>(x_1042.x, x_1042.y, x_1042.z));
  let x_1045 : f32 = u_xlat18;
  u_xlat18 = clamp(x_1045, 0.0f, 1.0f);
  let x_1048 : vec4<f32> = x_38.x_WorldSpaceLightPos0;
  let x_1050 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_1048.x, x_1048.y, x_1048.z), vec3<f32>(x_1050.x, x_1050.y, x_1050.z));
  let x_1055 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1055, 0.0f, 1.0f);
  let x_1060 : f32 = u_xlat1.x;
  let x_1062 : f32 = u_xlat1.x;
  u_xlat17 = (x_1060 * x_1062);
  let x_1064 : f32 = u_xlat17;
  let x_1066 : vec4<f32> = u_xlat6;
  u_xlat17 = dot(vec2<f32>(x_1064, x_1064), vec2<f32>(x_1066.z, x_1066.z));
  let x_1069 : f32 = u_xlat17;
  u_xlat17 = (x_1069 + -0.5f);
  let x_1074 : f32 = u_xlat2.x;
  u_xlat33 = (-(x_1074) + 1.0f);
  let x_1078 : f32 = u_xlat33;
  let x_1079 : f32 = u_xlat33;
  u_xlat34 = (x_1078 * x_1079);
  let x_1081 : f32 = u_xlat34;
  let x_1082 : f32 = u_xlat34;
  u_xlat34 = (x_1081 * x_1082);
  let x_1084 : f32 = u_xlat33;
  let x_1085 : f32 = u_xlat34;
  u_xlat33 = (x_1084 * x_1085);
  let x_1087 : f32 = u_xlat17;
  let x_1088 : f32 = u_xlat33;
  u_xlat33 = ((x_1087 * x_1088) + 1.0f);
  let x_1091 : f32 = u_xlat48;
  u_xlat34 = (-(abs(x_1091)) + 1.0f);
  let x_1095 : f32 = u_xlat34;
  let x_1096 : f32 = u_xlat34;
  u_xlat51 = (x_1095 * x_1096);
  let x_1098 : f32 = u_xlat51;
  let x_1099 : f32 = u_xlat51;
  u_xlat51 = (x_1098 * x_1099);
  let x_1101 : f32 = u_xlat34;
  let x_1102 : f32 = u_xlat51;
  u_xlat34 = (x_1101 * x_1102);
  let x_1104 : f32 = u_xlat17;
  let x_1105 : f32 = u_xlat34;
  u_xlat17 = ((x_1104 * x_1105) + 1.0f);
  let x_1108 : f32 = u_xlat17;
  let x_1109 : f32 = u_xlat33;
  u_xlat17 = (x_1108 * x_1109);
  let x_1112 : f32 = u_xlat2.x;
  let x_1113 : f32 = u_xlat17;
  u_xlat17 = (x_1112 * x_1113);
  let x_1116 : f32 = u_xlat6.z;
  let x_1118 : f32 = u_xlat6.z;
  u_xlat33 = (x_1116 * x_1118);
  let x_1120 : f32 = u_xlat33;
  u_xlat33 = max(x_1120, 0.002f);
  let x_1123 : f32 = u_xlat33;
  u_xlat51 = (-(x_1123) + 1.0f);
  let x_1126 : f32 = u_xlat48;
  let x_1128 : f32 = u_xlat51;
  let x_1130 : f32 = u_xlat33;
  u_xlat4.x = ((abs(x_1126) * x_1128) + x_1130);
  let x_1134 : f32 = u_xlat2.x;
  let x_1135 : f32 = u_xlat51;
  let x_1137 : f32 = u_xlat33;
  u_xlat51 = ((x_1134 * x_1135) + x_1137);
  let x_1139 : f32 = u_xlat48;
  let x_1141 : f32 = u_xlat51;
  u_xlat48 = (abs(x_1139) * x_1141);
  let x_1144 : f32 = u_xlat2.x;
  let x_1146 : f32 = u_xlat4.x;
  let x_1148 : f32 = u_xlat48;
  u_xlat48 = ((x_1144 * x_1146) + x_1148);
  let x_1150 : f32 = u_xlat48;
  u_xlat48 = (x_1150 + 0.00001f);
  let x_1153 : f32 = u_xlat48;
  u_xlat48 = (0.5f / x_1153);
  let x_1155 : f32 = u_xlat33;
  let x_1156 : f32 = u_xlat33;
  u_xlat51 = (x_1155 * x_1156);
  let x_1158 : f32 = u_xlat18;
  let x_1159 : f32 = u_xlat51;
  let x_1161 : f32 = u_xlat18;
  u_xlat4.x = ((x_1158 * x_1159) + -(x_1161));
  let x_1166 : f32 = u_xlat4.x;
  let x_1167 : f32 = u_xlat18;
  u_xlat18 = ((x_1166 * x_1167) + 1.0f);
  let x_1170 : f32 = u_xlat51;
  u_xlat51 = (x_1170 * 0.318309873f);
  let x_1173 : f32 = u_xlat18;
  let x_1174 : f32 = u_xlat18;
  u_xlat18 = ((x_1173 * x_1174) + 0.0000001f);
  let x_1178 : f32 = u_xlat51;
  let x_1179 : f32 = u_xlat18;
  u_xlat18 = (x_1178 / x_1179);
  let x_1181 : f32 = u_xlat48;
  let x_1182 : f32 = u_xlat18;
  u_xlat48 = (x_1181 * x_1182);
  let x_1185 : f32 = u_xlat2.x;
  let x_1186 : f32 = u_xlat48;
  u_xlat48 = (x_1185 * x_1186);
  let x_1188 : f32 = u_xlat48;
  u_xlat48 = (x_1188 * 3.141592741f);
  let x_1191 : f32 = u_xlat48;
  u_xlat48 = max(x_1191, 0.0f);
  let x_1193 : f32 = u_xlat33;
  let x_1194 : f32 = u_xlat33;
  u_xlat33 = ((x_1193 * x_1194) + 1.0f);
  let x_1197 : f32 = u_xlat33;
  u_xlat1.z = (1.0f / x_1197);
  let x_1200 : vec4<f32> = u_xlat7;
  let x_1202 : vec4<f32> = u_xlat7;
  u_xlat2.x = dot(vec3<f32>(x_1200.x, x_1200.y, x_1200.z), vec3<f32>(x_1202.x, x_1202.y, x_1202.z));
  let x_1208 : f32 = u_xlat2.x;
  u_xlatb2 = !((x_1208 == 0.0f));
  let x_1210 : bool = u_xlatb2;
  u_xlat2.x = select(0.0f, 1.0f, x_1210);
  let x_1213 : f32 = u_xlat48;
  let x_1215 : f32 = u_xlat2.x;
  u_xlat48 = (x_1213 * x_1215);
  let x_1217 : f32 = u_xlat50;
  let x_1220 : f32 = u_xlat4.w;
  u_xlat2.x = (-(x_1217) + x_1220);
  let x_1224 : f32 = u_xlat2.x;
  u_xlat2.x = (x_1224 + 1.0f);
  let x_1228 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1228, 0.0f, 1.0f);
  let x_1231 : f32 = u_xlat17;
  let x_1233 : vec3<f32> = u_xlat8;
  let x_1234 : vec3<f32> = (vec3<f32>(x_1231, x_1231, x_1231) * x_1233);
  let x_1235 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1234.x, x_1234.y, x_1234.z, x_1235.w);
  let x_1237 : vec4<f32> = u_xlat9;
  let x_1239 : f32 = u_xlat49;
  let x_1242 : vec4<f32> = u_xlat4;
  let x_1244 : vec3<f32> = ((vec3<f32>(x_1237.x, x_1237.y, x_1237.z) * vec3<f32>(x_1239, x_1239, x_1239)) + vec3<f32>(x_1242.x, x_1242.y, x_1242.z));
  let x_1245 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1244.x, x_1244.y, x_1244.z, x_1245.w);
  let x_1247 : vec3<f32> = u_xlat8;
  let x_1248 : f32 = u_xlat48;
  let x_1250 : vec3<f32> = (x_1247 * vec3<f32>(x_1248, x_1248, x_1248));
  let x_1251 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1250.x, x_1250.y, x_1250.z, x_1251.w);
  let x_1254 : f32 = u_xlat1.x;
  u_xlat0.w = (-(x_1254) + 1.0f);
  let x_1259 : f32 = u_xlat0.w;
  let x_1261 : f32 = u_xlat0.w;
  u_xlat1.x = (x_1259 * x_1261);
  let x_1265 : f32 = u_xlat1.x;
  let x_1267 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1265 * x_1267);
  let x_1270 : vec4<f32> = u_xlat0;
  let x_1271 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_1270 * vec4<f32>(x_1271.z, x_1271.z, x_1271.z, x_1271.x));
  let x_1274 : vec4<f32> = u_xlat7;
  let x_1277 : vec3<f32> = (-(vec3<f32>(x_1274.x, x_1274.y, x_1274.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1278 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1277.x, x_1277.y, x_1278.z, x_1277.z);
  let x_1280 : vec4<f32> = u_xlat1;
  let x_1282 : vec4<f32> = u_xlat0;
  let x_1285 : vec4<f32> = u_xlat7;
  let x_1287 : vec3<f32> = ((vec3<f32>(x_1280.x, x_1280.y, x_1280.w) * vec3<f32>(x_1282.w, x_1282.w, x_1282.w)) + vec3<f32>(x_1285.x, x_1285.y, x_1285.z));
  let x_1288 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1287.x, x_1287.y, x_1288.z, x_1287.z);
  let x_1290 : vec4<f32> = u_xlat1;
  let x_1292 : vec4<f32> = u_xlat5;
  let x_1294 : vec3<f32> = (vec3<f32>(x_1290.x, x_1290.y, x_1290.w) * vec3<f32>(x_1292.x, x_1292.y, x_1292.z));
  let x_1295 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1294.x, x_1294.y, x_1295.z, x_1294.z);
  let x_1297 : vec3<f32> = u_xlat3;
  let x_1298 : vec4<f32> = u_xlat4;
  let x_1301 : vec4<f32> = u_xlat1;
  let x_1303 : vec3<f32> = ((x_1297 * vec3<f32>(x_1298.x, x_1298.y, x_1298.z)) + vec3<f32>(x_1301.x, x_1301.y, x_1301.w));
  let x_1304 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1303.x, x_1303.y, x_1304.z, x_1303.z);
  let x_1306 : vec4<f32> = u_xlat7;
  let x_1309 : vec4<f32> = u_xlat2;
  let x_1311 : vec3<f32> = (-(vec3<f32>(x_1306.x, x_1306.y, x_1306.z)) + vec3<f32>(x_1309.x, x_1309.x, x_1309.x));
  let x_1312 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1311.x, x_1311.y, x_1312.z, x_1311.z);
  let x_1314 : f32 = u_xlat34;
  let x_1316 : vec4<f32> = u_xlat2;
  let x_1319 : vec4<f32> = u_xlat7;
  let x_1321 : vec3<f32> = ((vec3<f32>(x_1314, x_1314, x_1314) * vec3<f32>(x_1316.x, x_1316.y, x_1316.w)) + vec3<f32>(x_1319.x, x_1319.y, x_1319.z));
  let x_1322 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1321.x, x_1321.y, x_1321.z, x_1322.w);
  let x_1324 : vec4<f32> = u_xlat0;
  let x_1326 : vec4<f32> = u_xlat2;
  let x_1329 : vec4<f32> = u_xlat1;
  let x_1331 : vec3<f32> = ((vec3<f32>(x_1324.x, x_1324.y, x_1324.z) * vec3<f32>(x_1326.x, x_1326.y, x_1326.z)) + vec3<f32>(x_1329.x, x_1329.y, x_1329.w));
  let x_1332 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1331.x, x_1331.y, x_1331.z, x_1332.w);
  let x_1334 : vec4<f32> = u_xlat6;
  let x_1336 : vec4<f32> = u_xlat0;
  let x_1338 : vec3<f32> = (vec3<f32>(x_1334.x, x_1334.y, x_1334.w) + vec3<f32>(x_1336.x, x_1336.y, x_1336.z));
  let x_1339 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1338.x, x_1338.y, x_1338.z, x_1339.w);
  let x_1342 : f32 = vs_TEXCOORD5;
  let x_1344 : f32 = x_38.x_ProjectionParams.y;
  u_xlat48 = (x_1342 / x_1344);
  let x_1346 : f32 = u_xlat48;
  u_xlat48 = (-(x_1346) + 1.0f);
  let x_1349 : f32 = u_xlat48;
  let x_1351 : f32 = x_38.x_ProjectionParams.z;
  u_xlat48 = (x_1349 * x_1351);
  let x_1353 : f32 = u_xlat48;
  u_xlat48 = max(x_1353, 0.0f);
  let x_1355 : f32 = u_xlat48;
  let x_1358 : f32 = x_38.unity_FogParams.x;
  u_xlat48 = (x_1355 * x_1358);
  let x_1360 : f32 = u_xlat48;
  let x_1361 : f32 = u_xlat48;
  u_xlat48 = (x_1360 * -(x_1361));
  let x_1364 : f32 = u_xlat48;
  u_xlat48 = exp2(x_1364);
  let x_1366 : vec4<f32> = u_xlat0;
  let x_1370 : vec4<f32> = x_38.unity_FogColor;
  let x_1373 : vec3<f32> = (vec3<f32>(x_1366.x, x_1366.y, x_1366.z) + -(vec3<f32>(x_1370.x, x_1370.y, x_1370.z)));
  let x_1374 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1373.x, x_1373.y, x_1373.z, x_1374.w);
  let x_1378 : f32 = u_xlat48;
  let x_1380 : vec4<f32> = u_xlat0;
  let x_1384 : vec4<f32> = x_38.unity_FogColor;
  let x_1386 : vec3<f32> = ((vec3<f32>(x_1378, x_1378, x_1378) * vec3<f32>(x_1380.x, x_1380.y, x_1380.z)) + vec3<f32>(x_1384.x, x_1384.y, x_1384.z));
  let x_1387 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1386.x, x_1386.y, x_1386.z, x_1387.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(2) vs_TEXCOORD1_param : vec4<f32>, @location(3) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD3_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(5) vs_TEXCOORD4_param : vec3<f32>, @location(1) vs_TEXCOORD5_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

