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
  x_VeinColor : vec4<f32>,
  x_BrainColor : vec4<f32>,
}

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_38 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_Occlusion : texture_2d<f32>;

@group(0) @binding(14) var sampler_Occlusion : sampler;

@group(0) @binding(2) var x_Metallic : texture_2d<f32>;

@group(0) @binding(12) var sampler_Metallic : sampler;

@group(0) @binding(3) var x_NormalMap : texture_2d<f32>;

@group(0) @binding(13) var sampler_NormalMap : sampler;

@group(0) @binding(7) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(9) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(4) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ShadowMapTexture : sampler;

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(0) @binding(5) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(6) var unity_SpecCube1 : texture_cube<f32>;

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
  var u_xlatb51 : bool;
  var u_xlatb20 : bool;
  var x_341 : vec3<f32>;
  var u_xlat20 : f32;
  var u_xlat36 : f32;
  var u_xlat8 : vec3<f32>;
  var u_xlatb50 : bool;
  var u_xlat9 : vec4<f32>;
  var x_543 : vec3<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec3<f32>;
  var u_xlatb13 : vec3<bool>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_729 : f32;
  var x_741 : f32;
  var x_753 : f32;
  var u_xlat13 : vec3<f32>;
  var u_xlat14 : vec3<f32>;
  var u_xlatb15 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_910 : f32;
  var x_922 : f32;
  var x_934 : f32;
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
  let x_235 : f32 = x_38.unity_MatrixV[0i].z;
  u_xlat7.x = x_235;
  let x_238 : f32 = x_38.unity_MatrixV[1i].z;
  u_xlat7.y = x_238;
  let x_242 : f32 = x_38.unity_MatrixV[2i].z;
  u_xlat7.z = x_242;
  let x_244 : vec4<f32> = u_xlat1;
  let x_246 : vec4<f32> = u_xlat7;
  u_xlat50 = dot(vec3<f32>(x_244.x, x_244.y, x_244.z), vec3<f32>(x_246.x, x_246.y, x_246.z));
  let x_249 : vec4<f32> = u_xlat0;
  let x_253 : vec4<f32> = x_38.unity_ShadowFadeCenterAndType;
  let x_256 : vec3<f32> = (vec3<f32>(x_249.x, x_249.y, x_249.z) + -(vec3<f32>(x_253.x, x_253.y, x_253.z)));
  let x_257 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_256.x, x_256.y, x_256.z, x_257.w);
  let x_259 : vec4<f32> = u_xlat7;
  let x_261 : vec4<f32> = u_xlat7;
  u_xlat51 = dot(vec3<f32>(x_259.x, x_259.y, x_259.z), vec3<f32>(x_261.x, x_261.y, x_261.z));
  let x_264 : f32 = u_xlat51;
  u_xlat51 = sqrt(x_264);
  let x_266 : f32 = u_xlat50;
  let x_268 : f32 = u_xlat51;
  u_xlat51 = (-(x_266) + x_268);
  let x_271 : f32 = x_38.unity_ShadowFadeCenterAndType.w;
  let x_272 : f32 = u_xlat51;
  let x_274 : f32 = u_xlat50;
  u_xlat50 = ((x_271 * x_272) + x_274);
  let x_276 : f32 = u_xlat50;
  let x_279 : f32 = x_38.x_LightShadowData.z;
  let x_282 : f32 = x_38.x_LightShadowData.w;
  u_xlat50 = ((x_276 * x_279) + x_282);
  let x_284 : f32 = u_xlat50;
  u_xlat50 = clamp(x_284, 0.0f, 1.0f);
  let x_291 : f32 = x_38.unity_ProbeVolumeParams.x;
  u_xlatb51 = (x_291 == 1.0f);
  let x_293 : bool = u_xlatb51;
  if (x_293) {
    let x_298 : f32 = x_38.unity_ProbeVolumeParams.y;
    u_xlatb20 = (x_298 == 1.0f);
    let x_300 : vec4<f32> = vs_TEXCOORD2;
    let x_304 : vec4<f32> = x_38.unity_ProbeVolumeWorldToObject[1i];
    let x_306 : vec3<f32> = (vec3<f32>(x_300.w, x_300.w, x_300.w) * vec3<f32>(x_304.x, x_304.y, x_304.z));
    let x_307 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_306.x, x_306.y, x_306.z, x_307.w);
    let x_310 : vec4<f32> = x_38.unity_ProbeVolumeWorldToObject[0i];
    let x_312 : vec4<f32> = vs_TEXCOORD1;
    let x_315 : vec4<f32> = u_xlat7;
    let x_317 : vec3<f32> = ((vec3<f32>(x_310.x, x_310.y, x_310.z) * vec3<f32>(x_312.w, x_312.w, x_312.w)) + vec3<f32>(x_315.x, x_315.y, x_315.z));
    let x_318 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_317.x, x_317.y, x_317.z, x_318.w);
    let x_321 : vec4<f32> = x_38.unity_ProbeVolumeWorldToObject[2i];
    let x_323 : vec4<f32> = vs_TEXCOORD3;
    let x_326 : vec4<f32> = u_xlat7;
    let x_328 : vec3<f32> = ((vec3<f32>(x_321.x, x_321.y, x_321.z) * vec3<f32>(x_323.w, x_323.w, x_323.w)) + vec3<f32>(x_326.x, x_326.y, x_326.z));
    let x_329 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_328.x, x_328.y, x_328.z, x_329.w);
    let x_331 : vec4<f32> = u_xlat7;
    let x_335 : vec4<f32> = x_38.unity_ProbeVolumeWorldToObject[3i];
    let x_337 : vec3<f32> = (vec3<f32>(x_331.x, x_331.y, x_331.z) + vec3<f32>(x_335.x, x_335.y, x_335.z));
    let x_338 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_337.x, x_337.y, x_337.z, x_338.w);
    let x_340 : bool = u_xlatb20;
    if (x_340) {
      let x_344 : vec4<f32> = u_xlat7;
      x_341 = vec3<f32>(x_344.x, x_344.y, x_344.z);
    } else {
      let x_347 : vec4<f32> = u_xlat0;
      x_341 = vec3<f32>(x_347.x, x_347.y, x_347.z);
    }
    let x_349 : vec3<f32> = x_341;
    let x_350 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_349.x, x_349.y, x_349.z, x_350.w);
    let x_352 : vec4<f32> = u_xlat7;
    let x_356 : vec3<f32> = x_38.unity_ProbeVolumeMin;
    let x_358 : vec3<f32> = (vec3<f32>(x_352.x, x_352.y, x_352.z) + -(x_356));
    let x_359 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_358.x, x_358.y, x_358.z, x_359.w);
    let x_361 : vec4<f32> = u_xlat7;
    let x_365 : vec3<f32> = x_38.unity_ProbeVolumeSizeInv;
    let x_366 : vec3<f32> = (vec3<f32>(x_361.x, x_361.y, x_361.z) * x_365);
    let x_367 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_367.x, x_366.x, x_366.y, x_366.z);
    let x_371 : f32 = u_xlat7.y;
    u_xlat20 = ((x_371 * 0.25f) + 0.75f);
    let x_378 : f32 = x_38.unity_ProbeVolumeParams.z;
    u_xlat36 = ((x_378 * 0.5f) + 0.75f);
    let x_382 : f32 = u_xlat36;
    let x_383 : f32 = u_xlat20;
    u_xlat7.x = max(x_382, x_383);
    let x_394 : vec4<f32> = u_xlat7;
    let x_396 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_394.x, x_394.z, x_394.w));
    u_xlat7 = x_396;
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
    u_xlat7.w = 1.0f;
  }
  let x_402 : vec4<f32> = u_xlat7;
  let x_405 : vec4<f32> = x_38.unity_OcclusionMaskSelector;
  u_xlat20 = dot(x_402, x_405);
  let x_407 : f32 = u_xlat20;
  u_xlat20 = clamp(x_407, 0.0f, 1.0f);
  let x_410 : vec4<f32> = vs_TEXCOORD6;
  let x_412 : vec4<f32> = vs_TEXCOORD6;
  let x_414 : vec2<f32> = (vec2<f32>(x_410.x, x_410.y) / vec2<f32>(x_412.w, x_412.w));
  let x_415 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_414.x, x_414.y, x_415.z, x_415.w);
  let x_422 : vec4<f32> = u_xlat7;
  let x_424 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_422.x, x_422.y));
  u_xlat36 = x_424.x;
  let x_426 : f32 = u_xlat36;
  let x_428 : f32 = u_xlat20;
  u_xlat20 = (-(x_426) + x_428);
  let x_430 : f32 = u_xlat50;
  let x_431 : f32 = u_xlat20;
  let x_433 : f32 = u_xlat36;
  u_xlat50 = ((x_430 * x_431) + x_433);
  let x_435 : vec4<f32> = vs_TEXCOORD1;
  let x_437 : vec4<f32> = u_xlat5;
  u_xlat7.x = dot(vec3<f32>(x_435.x, x_435.y, x_435.z), vec3<f32>(x_437.x, x_437.y, x_437.z));
  let x_441 : vec4<f32> = vs_TEXCOORD2;
  let x_443 : vec4<f32> = u_xlat5;
  u_xlat7.y = dot(vec3<f32>(x_441.x, x_441.y, x_441.z), vec3<f32>(x_443.x, x_443.y, x_443.z));
  let x_447 : vec4<f32> = vs_TEXCOORD3;
  let x_449 : vec4<f32> = u_xlat5;
  u_xlat7.z = dot(vec3<f32>(x_447.x, x_447.y, x_447.z), vec3<f32>(x_449.x, x_449.y, x_449.z));
  let x_453 : vec4<f32> = u_xlat7;
  let x_455 : vec4<f32> = u_xlat7;
  u_xlat20 = dot(vec3<f32>(x_453.x, x_453.y, x_453.z), vec3<f32>(x_455.x, x_455.y, x_455.z));
  let x_458 : f32 = u_xlat20;
  u_xlat20 = inverseSqrt(x_458);
  let x_460 : f32 = u_xlat20;
  let x_462 : vec4<f32> = u_xlat7;
  let x_464 : vec3<f32> = (vec3<f32>(x_460, x_460, x_460) * vec3<f32>(x_462.x, x_462.y, x_462.z));
  let x_465 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_464.x, x_464.y, x_464.z, x_465.w);
  let x_467 : vec4<f32> = u_xlat2;
  let x_470 : vec4<f32> = u_xlat5;
  u_xlat20 = dot(-(vec3<f32>(x_467.x, x_467.y, x_467.z)), vec3<f32>(x_470.x, x_470.y, x_470.z));
  let x_473 : f32 = u_xlat20;
  let x_474 : f32 = u_xlat20;
  u_xlat20 = (x_473 + x_474);
  let x_476 : vec4<f32> = u_xlat5;
  let x_478 : f32 = u_xlat20;
  let x_482 : vec4<f32> = u_xlat2;
  let x_485 : vec3<f32> = ((vec3<f32>(x_476.x, x_476.y, x_476.z) * -(vec3<f32>(x_478, x_478, x_478))) + -(vec3<f32>(x_482.x, x_482.y, x_482.z)));
  let x_486 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_485.x, x_485.y, x_485.z, x_486.w);
  let x_489 : f32 = u_xlat50;
  let x_493 : vec4<f32> = x_38.x_LightColor0;
  u_xlat8 = (vec3<f32>(x_489, x_489, x_489) * vec3<f32>(x_493.x, x_493.y, x_493.z));
  let x_496 : bool = u_xlatb51;
  if (x_496) {
    let x_501 : f32 = x_38.unity_ProbeVolumeParams.y;
    u_xlatb50 = (x_501 == 1.0f);
    let x_504 : vec4<f32> = vs_TEXCOORD2;
    let x_507 : vec4<f32> = x_38.unity_ProbeVolumeWorldToObject[1i];
    let x_509 : vec3<f32> = (vec3<f32>(x_504.w, x_504.w, x_504.w) * vec3<f32>(x_507.x, x_507.y, x_507.z));
    let x_510 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_509.x, x_509.y, x_509.z, x_510.w);
    let x_513 : vec4<f32> = x_38.unity_ProbeVolumeWorldToObject[0i];
    let x_515 : vec4<f32> = vs_TEXCOORD1;
    let x_518 : vec4<f32> = u_xlat9;
    let x_520 : vec3<f32> = ((vec3<f32>(x_513.x, x_513.y, x_513.z) * vec3<f32>(x_515.w, x_515.w, x_515.w)) + vec3<f32>(x_518.x, x_518.y, x_518.z));
    let x_521 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_520.x, x_520.y, x_520.z, x_521.w);
    let x_524 : vec4<f32> = x_38.unity_ProbeVolumeWorldToObject[2i];
    let x_526 : vec4<f32> = vs_TEXCOORD3;
    let x_529 : vec4<f32> = u_xlat9;
    let x_531 : vec3<f32> = ((vec3<f32>(x_524.x, x_524.y, x_524.z) * vec3<f32>(x_526.w, x_526.w, x_526.w)) + vec3<f32>(x_529.x, x_529.y, x_529.z));
    let x_532 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_531.x, x_531.y, x_531.z, x_532.w);
    let x_534 : vec4<f32> = u_xlat9;
    let x_537 : vec4<f32> = x_38.unity_ProbeVolumeWorldToObject[3i];
    let x_539 : vec3<f32> = (vec3<f32>(x_534.x, x_534.y, x_534.z) + vec3<f32>(x_537.x, x_537.y, x_537.z));
    let x_540 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_539.x, x_539.y, x_539.z, x_540.w);
    let x_542 : bool = u_xlatb50;
    if (x_542) {
      let x_546 : vec4<f32> = u_xlat9;
      x_543 = vec3<f32>(x_546.x, x_546.y, x_546.z);
    } else {
      let x_549 : vec4<f32> = u_xlat0;
      x_543 = vec3<f32>(x_549.x, x_549.y, x_549.z);
    }
    let x_551 : vec3<f32> = x_543;
    let x_552 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_551.x, x_551.y, x_551.z, x_552.w);
    let x_554 : vec4<f32> = u_xlat9;
    let x_557 : vec3<f32> = x_38.unity_ProbeVolumeMin;
    let x_559 : vec3<f32> = (vec3<f32>(x_554.x, x_554.y, x_554.z) + -(x_557));
    let x_560 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_559.x, x_559.y, x_559.z, x_560.w);
    let x_562 : vec4<f32> = u_xlat9;
    let x_565 : vec3<f32> = x_38.unity_ProbeVolumeSizeInv;
    let x_566 : vec3<f32> = (vec3<f32>(x_562.x, x_562.y, x_562.z) * x_565);
    let x_567 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_567.x, x_566.x, x_566.y, x_566.z);
    let x_570 : f32 = u_xlat9.y;
    u_xlat50 = (x_570 * 0.25f);
    let x_573 : f32 = x_38.unity_ProbeVolumeParams.z;
    u_xlat51 = (x_573 * 0.5f);
    let x_576 : f32 = x_38.unity_ProbeVolumeParams.z;
    u_xlat20 = ((-(x_576) * 0.5f) + 0.25f);
    let x_580 : f32 = u_xlat50;
    let x_581 : f32 = u_xlat51;
    u_xlat50 = max(x_580, x_581);
    let x_583 : f32 = u_xlat20;
    let x_584 : f32 = u_xlat50;
    u_xlat9.x = min(x_583, x_584);
    let x_591 : vec4<f32> = u_xlat9;
    let x_593 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_591.x, x_591.z, x_591.w));
    u_xlat10 = x_593;
    let x_595 : vec4<f32> = u_xlat9;
    let x_598 : vec3<f32> = (vec3<f32>(x_595.x, x_595.z, x_595.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_599 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_598.x, x_598.y, x_598.z, x_599.w);
    let x_604 : vec4<f32> = u_xlat11;
    let x_606 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_604.x, x_604.y, x_604.z));
    u_xlat11 = x_606;
    let x_607 : vec4<f32> = u_xlat9;
    let x_610 : vec3<f32> = (vec3<f32>(x_607.x, x_607.z, x_607.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_611 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_610.x, x_610.y, x_610.z, x_611.w);
    let x_616 : vec4<f32> = u_xlat9;
    let x_618 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_616.x, x_616.y, x_616.z));
    u_xlat9 = x_618;
    u_xlat5.w = 1.0f;
    let x_620 : vec4<f32> = u_xlat10;
    let x_621 : vec4<f32> = u_xlat5;
    u_xlat10.x = dot(x_620, x_621);
    let x_624 : vec4<f32> = u_xlat11;
    let x_625 : vec4<f32> = u_xlat5;
    u_xlat10.y = dot(x_624, x_625);
    let x_628 : vec4<f32> = u_xlat9;
    let x_629 : vec4<f32> = u_xlat5;
    u_xlat10.z = dot(x_628, x_629);
  } else {
    u_xlat5.w = 1.0f;
    let x_635 : vec4<f32> = x_38.unity_SHAr;
    let x_636 : vec4<f32> = u_xlat5;
    u_xlat10.x = dot(x_635, x_636);
    let x_641 : vec4<f32> = x_38.unity_SHAg;
    let x_642 : vec4<f32> = u_xlat5;
    u_xlat10.y = dot(x_641, x_642);
    let x_647 : vec4<f32> = x_38.unity_SHAb;
    let x_648 : vec4<f32> = u_xlat5;
    u_xlat10.z = dot(x_647, x_648);
  }
  let x_651 : vec4<f32> = u_xlat10;
  let x_655 : vec3<f32> = vs_TEXCOORD4;
  let x_656 : vec3<f32> = (vec3<f32>(x_651.x, x_651.y, x_651.z) + x_655);
  let x_657 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_656.x, x_656.y, x_656.z, x_657.w);
  let x_659 : vec4<f32> = u_xlat9;
  let x_662 : vec3<f32> = max(vec3<f32>(x_659.x, x_659.y, x_659.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_663 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_662.x, x_662.y, x_662.z, x_663.w);
  let x_667 : f32 = x_38.unity_SpecCube0_ProbePosition.w;
  u_xlatb50 = (0.0f < x_667);
  let x_669 : bool = u_xlatb50;
  if (x_669) {
    let x_672 : vec4<f32> = u_xlat7;
    let x_674 : vec4<f32> = u_xlat7;
    u_xlat50 = dot(vec3<f32>(x_672.x, x_672.y, x_672.z), vec3<f32>(x_674.x, x_674.y, x_674.z));
    let x_677 : f32 = u_xlat50;
    u_xlat50 = inverseSqrt(x_677);
    let x_679 : f32 = u_xlat50;
    let x_681 : vec4<f32> = u_xlat7;
    let x_683 : vec3<f32> = (vec3<f32>(x_679, x_679, x_679) * vec3<f32>(x_681.x, x_681.y, x_681.z));
    let x_684 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_683.x, x_683.y, x_683.z, x_684.w);
    let x_686 : vec4<f32> = u_xlat0;
    let x_691 : vec4<f32> = x_38.unity_SpecCube0_BoxMax;
    let x_693 : vec3<f32> = (-(vec3<f32>(x_686.x, x_686.y, x_686.z)) + vec3<f32>(x_691.x, x_691.y, x_691.z));
    let x_694 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_693.x, x_693.y, x_693.z, x_694.w);
    let x_696 : vec4<f32> = u_xlat11;
    let x_698 : vec4<f32> = u_xlat10;
    let x_700 : vec3<f32> = (vec3<f32>(x_696.x, x_696.y, x_696.z) / vec3<f32>(x_698.x, x_698.y, x_698.z));
    let x_701 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_700.x, x_700.y, x_700.z, x_701.w);
    let x_704 : vec4<f32> = u_xlat0;
    let x_709 : vec4<f32> = x_38.unity_SpecCube0_BoxMin;
    u_xlat12 = (-(vec3<f32>(x_704.x, x_704.y, x_704.z)) + vec3<f32>(x_709.x, x_709.y, x_709.z));
    let x_712 : vec3<f32> = u_xlat12;
    let x_713 : vec4<f32> = u_xlat10;
    u_xlat12 = (x_712 / vec3<f32>(x_713.x, x_713.y, x_713.z));
    let x_720 : vec4<f32> = u_xlat10;
    let x_723 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_720.x, x_720.y, x_720.z, x_720.x));
    u_xlatb13 = vec3<bool>(x_723.x, x_723.y, x_723.z);
    let x_726 : vec4<f32> = u_xlat11;
    hlslcc_movcTemp = x_726;
    let x_728 : bool = u_xlatb13.x;
    if (x_728) {
      let x_733 : f32 = u_xlat11.x;
      x_729 = x_733;
    } else {
      let x_736 : f32 = u_xlat12.x;
      x_729 = x_736;
    }
    let x_737 : f32 = x_729;
    hlslcc_movcTemp.x = x_737;
    let x_740 : bool = u_xlatb13.y;
    if (x_740) {
      let x_745 : f32 = u_xlat11.y;
      x_741 = x_745;
    } else {
      let x_748 : f32 = u_xlat12.y;
      x_741 = x_748;
    }
    let x_749 : f32 = x_741;
    hlslcc_movcTemp.y = x_749;
    let x_752 : bool = u_xlatb13.z;
    if (x_752) {
      let x_757 : f32 = u_xlat11.z;
      x_753 = x_757;
    } else {
      let x_760 : f32 = u_xlat12.z;
      x_753 = x_760;
    }
    let x_761 : f32 = x_753;
    hlslcc_movcTemp.z = x_761;
    let x_763 : vec4<f32> = hlslcc_movcTemp;
    u_xlat11 = x_763;
    let x_765 : f32 = u_xlat11.y;
    let x_767 : f32 = u_xlat11.x;
    u_xlat50 = min(x_765, x_767);
    let x_770 : f32 = u_xlat11.z;
    let x_771 : f32 = u_xlat50;
    u_xlat50 = min(x_770, x_771);
    let x_773 : vec4<f32> = u_xlat0;
    let x_776 : vec4<f32> = x_38.unity_SpecCube0_ProbePosition;
    let x_779 : vec3<f32> = (vec3<f32>(x_773.x, x_773.y, x_773.z) + -(vec3<f32>(x_776.x, x_776.y, x_776.z)));
    let x_780 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_779.x, x_779.y, x_779.z, x_780.w);
    let x_782 : vec4<f32> = u_xlat10;
    let x_784 : f32 = u_xlat50;
    let x_787 : vec4<f32> = u_xlat11;
    let x_789 : vec3<f32> = ((vec3<f32>(x_782.x, x_782.y, x_782.z) * vec3<f32>(x_784, x_784, x_784)) + vec3<f32>(x_787.x, x_787.y, x_787.z));
    let x_790 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_789.x, x_789.y, x_789.z, x_790.w);
  } else {
    let x_793 : vec4<f32> = u_xlat7;
    let x_794 : vec3<f32> = vec3<f32>(x_793.x, x_793.y, x_793.z);
    let x_795 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_794.x, x_794.y, x_794.z, x_795.w);
  }
  let x_798 : f32 = u_xlat6.z;
  u_xlat50 = ((-(x_798) * 0.699999988f) + 1.700000048f);
  let x_804 : f32 = u_xlat50;
  let x_806 : f32 = u_xlat6.z;
  u_xlat50 = (x_804 * x_806);
  let x_808 : f32 = u_xlat50;
  u_xlat50 = (x_808 * 6.0f);
  let x_819 : vec4<f32> = u_xlat10;
  let x_821 : f32 = u_xlat50;
  let x_822 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_819.x, x_819.y, x_819.z), x_821);
  u_xlat10 = x_822;
  let x_824 : f32 = u_xlat10.w;
  u_xlat51 = (x_824 + -1.0f);
  let x_828 : f32 = x_38.unity_SpecCube0_HDR.w;
  let x_829 : f32 = u_xlat51;
  u_xlat51 = ((x_828 * x_829) + 1.0f);
  let x_832 : f32 = u_xlat51;
  u_xlat51 = log2(x_832);
  let x_834 : f32 = u_xlat51;
  let x_836 : f32 = x_38.unity_SpecCube0_HDR.y;
  u_xlat51 = (x_834 * x_836);
  let x_838 : f32 = u_xlat51;
  u_xlat51 = exp2(x_838);
  let x_840 : f32 = u_xlat51;
  let x_842 : f32 = x_38.unity_SpecCube0_HDR.x;
  u_xlat51 = (x_840 * x_842);
  let x_844 : vec4<f32> = u_xlat10;
  let x_846 : f32 = u_xlat51;
  let x_848 : vec3<f32> = (vec3<f32>(x_844.x, x_844.y, x_844.z) * vec3<f32>(x_846, x_846, x_846));
  let x_849 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_848.x, x_848.y, x_848.z, x_849.w);
  let x_852 : f32 = x_38.unity_SpecCube0_BoxMin.w;
  u_xlatb20 = (x_852 < 0.999989986f);
  let x_855 : bool = u_xlatb20;
  if (x_855) {
    let x_860 : f32 = x_38.unity_SpecCube1_ProbePosition.w;
    u_xlatb20 = (0.0f < x_860);
    let x_862 : bool = u_xlatb20;
    if (x_862) {
      let x_865 : vec4<f32> = u_xlat7;
      let x_867 : vec4<f32> = u_xlat7;
      u_xlat20 = dot(vec3<f32>(x_865.x, x_865.y, x_865.z), vec3<f32>(x_867.x, x_867.y, x_867.z));
      let x_870 : f32 = u_xlat20;
      u_xlat20 = inverseSqrt(x_870);
      let x_872 : f32 = u_xlat20;
      let x_874 : vec4<f32> = u_xlat7;
      u_xlat12 = (vec3<f32>(x_872, x_872, x_872) * vec3<f32>(x_874.x, x_874.y, x_874.z));
      let x_878 : vec4<f32> = u_xlat0;
      let x_883 : vec4<f32> = x_38.unity_SpecCube1_BoxMax;
      u_xlat13 = (-(vec3<f32>(x_878.x, x_878.y, x_878.z)) + vec3<f32>(x_883.x, x_883.y, x_883.z));
      let x_886 : vec3<f32> = u_xlat13;
      let x_887 : vec3<f32> = u_xlat12;
      u_xlat13 = (x_886 / x_887);
      let x_890 : vec4<f32> = u_xlat0;
      let x_895 : vec4<f32> = x_38.unity_SpecCube1_BoxMin;
      u_xlat14 = (-(vec3<f32>(x_890.x, x_890.y, x_890.z)) + vec3<f32>(x_895.x, x_895.y, x_895.z));
      let x_898 : vec3<f32> = u_xlat14;
      let x_899 : vec3<f32> = u_xlat12;
      u_xlat14 = (x_898 / x_899);
      let x_902 : vec3<f32> = u_xlat12;
      let x_904 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_902.x, x_902.y, x_902.z, x_902.x));
      u_xlatb15 = vec3<bool>(x_904.x, x_904.y, x_904.z);
      let x_907 : vec3<f32> = u_xlat13;
      hlslcc_movcTemp_1 = x_907;
      let x_909 : bool = u_xlatb15.x;
      if (x_909) {
        let x_914 : f32 = u_xlat13.x;
        x_910 = x_914;
      } else {
        let x_917 : f32 = u_xlat14.x;
        x_910 = x_917;
      }
      let x_918 : f32 = x_910;
      hlslcc_movcTemp_1.x = x_918;
      let x_921 : bool = u_xlatb15.y;
      if (x_921) {
        let x_926 : f32 = u_xlat13.y;
        x_922 = x_926;
      } else {
        let x_929 : f32 = u_xlat14.y;
        x_922 = x_929;
      }
      let x_930 : f32 = x_922;
      hlslcc_movcTemp_1.y = x_930;
      let x_933 : bool = u_xlatb15.z;
      if (x_933) {
        let x_938 : f32 = u_xlat13.z;
        x_934 = x_938;
      } else {
        let x_941 : f32 = u_xlat14.z;
        x_934 = x_941;
      }
      let x_942 : f32 = x_934;
      hlslcc_movcTemp_1.z = x_942;
      let x_944 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat13 = x_944;
      let x_946 : f32 = u_xlat13.y;
      let x_948 : f32 = u_xlat13.x;
      u_xlat20 = min(x_946, x_948);
      let x_951 : f32 = u_xlat13.z;
      let x_952 : f32 = u_xlat20;
      u_xlat20 = min(x_951, x_952);
      let x_954 : vec4<f32> = u_xlat0;
      let x_957 : vec4<f32> = x_38.unity_SpecCube1_ProbePosition;
      let x_960 : vec3<f32> = (vec3<f32>(x_954.x, x_954.y, x_954.z) + -(vec3<f32>(x_957.x, x_957.y, x_957.z)));
      let x_961 : vec4<f32> = u_xlat0;
      u_xlat0 = vec4<f32>(x_960.x, x_960.y, x_960.z, x_961.w);
      let x_963 : vec3<f32> = u_xlat12;
      let x_964 : f32 = u_xlat20;
      let x_967 : vec4<f32> = u_xlat0;
      let x_969 : vec3<f32> = ((x_963 * vec3<f32>(x_964, x_964, x_964)) + vec3<f32>(x_967.x, x_967.y, x_967.z));
      let x_970 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_969.x, x_969.y, x_969.z, x_970.w);
    }
    let x_976 : vec4<f32> = u_xlat7;
    let x_978 : f32 = u_xlat50;
    let x_979 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_976.x, x_976.y, x_976.z), x_978);
    u_xlat7 = x_979;
    let x_981 : f32 = u_xlat7.w;
    u_xlat0.x = (x_981 + -1.0f);
    let x_986 : f32 = x_38.unity_SpecCube1_HDR.w;
    let x_988 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_986 * x_988) + 1.0f);
    let x_993 : f32 = u_xlat0.x;
    u_xlat0.x = log2(x_993);
    let x_997 : f32 = u_xlat0.x;
    let x_999 : f32 = x_38.unity_SpecCube1_HDR.y;
    u_xlat0.x = (x_997 * x_999);
    let x_1003 : f32 = u_xlat0.x;
    u_xlat0.x = exp2(x_1003);
    let x_1007 : f32 = u_xlat0.x;
    let x_1009 : f32 = x_38.unity_SpecCube1_HDR.x;
    u_xlat0.x = (x_1007 * x_1009);
    let x_1012 : vec4<f32> = u_xlat7;
    let x_1014 : vec4<f32> = u_xlat0;
    let x_1016 : vec3<f32> = (vec3<f32>(x_1012.x, x_1012.y, x_1012.z) * vec3<f32>(x_1014.x, x_1014.x, x_1014.x));
    let x_1017 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1016.x, x_1016.y, x_1016.z, x_1017.w);
    let x_1019 : f32 = u_xlat51;
    let x_1021 : vec4<f32> = u_xlat10;
    let x_1024 : vec4<f32> = u_xlat0;
    let x_1027 : vec3<f32> = ((vec3<f32>(x_1019, x_1019, x_1019) * vec3<f32>(x_1021.x, x_1021.y, x_1021.z)) + -(vec3<f32>(x_1024.x, x_1024.y, x_1024.z)));
    let x_1028 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1027.x, x_1027.y, x_1027.z, x_1028.w);
    let x_1031 : vec4<f32> = x_38.unity_SpecCube0_BoxMin;
    let x_1033 : vec4<f32> = u_xlat7;
    let x_1036 : vec4<f32> = u_xlat0;
    let x_1038 : vec3<f32> = ((vec3<f32>(x_1031.w, x_1031.w, x_1031.w) * vec3<f32>(x_1033.x, x_1033.y, x_1033.z)) + vec3<f32>(x_1036.x, x_1036.y, x_1036.z));
    let x_1039 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1038.x, x_1038.y, x_1038.z, x_1039.w);
  }
  let x_1041 : f32 = u_xlat49;
  let x_1043 : vec4<f32> = u_xlat11;
  let x_1045 : vec3<f32> = (vec3<f32>(x_1041, x_1041, x_1041) * vec3<f32>(x_1043.x, x_1043.y, x_1043.z));
  let x_1046 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1045.x, x_1045.y, x_1045.z, x_1046.w);
  let x_1048 : vec3<f32> = u_xlat3;
  let x_1050 : vec3<f32> = (x_1048 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_1051 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1050.x, x_1050.y, x_1050.z, x_1051.w);
  let x_1053 : vec4<f32> = u_xlat4;
  let x_1055 : vec4<f32> = u_xlat7;
  let x_1060 : vec3<f32> = ((vec3<f32>(x_1053.x, x_1053.x, x_1053.x) * vec3<f32>(x_1055.x, x_1055.y, x_1055.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_1061 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1060.x, x_1060.y, x_1060.z, x_1061.w);
  let x_1064 : f32 = u_xlat4.x;
  u_xlat50 = ((-(x_1064) * 0.959999979f) + 0.959999979f);
  let x_1069 : f32 = u_xlat50;
  let x_1071 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_1069, x_1069, x_1069) * x_1071);
  let x_1073 : vec4<f32> = u_xlat1;
  let x_1075 : f32 = u_xlat48;
  let x_1079 : vec4<f32> = x_38.x_WorldSpaceLightPos0;
  let x_1081 : vec3<f32> = ((vec3<f32>(x_1073.x, x_1073.y, x_1073.z) * vec3<f32>(x_1075, x_1075, x_1075)) + vec3<f32>(x_1079.x, x_1079.y, x_1079.z));
  let x_1082 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1081.x, x_1081.y, x_1081.z, x_1082.w);
  let x_1084 : vec4<f32> = u_xlat1;
  let x_1086 : vec4<f32> = u_xlat1;
  u_xlat48 = dot(vec3<f32>(x_1084.x, x_1084.y, x_1084.z), vec3<f32>(x_1086.x, x_1086.y, x_1086.z));
  let x_1089 : f32 = u_xlat48;
  u_xlat48 = max(x_1089, 0.001f);
  let x_1092 : f32 = u_xlat48;
  u_xlat48 = inverseSqrt(x_1092);
  let x_1094 : f32 = u_xlat48;
  let x_1096 : vec4<f32> = u_xlat1;
  let x_1098 : vec3<f32> = (vec3<f32>(x_1094, x_1094, x_1094) * vec3<f32>(x_1096.x, x_1096.y, x_1096.z));
  let x_1099 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1098.x, x_1098.y, x_1098.z, x_1099.w);
  let x_1101 : vec4<f32> = u_xlat5;
  let x_1103 : vec4<f32> = u_xlat2;
  u_xlat48 = dot(vec3<f32>(x_1101.x, x_1101.y, x_1101.z), vec3<f32>(x_1103.x, x_1103.y, x_1103.z));
  let x_1106 : vec4<f32> = u_xlat5;
  let x_1109 : vec4<f32> = x_38.x_WorldSpaceLightPos0;
  u_xlat2.x = dot(vec3<f32>(x_1106.x, x_1106.y, x_1106.z), vec3<f32>(x_1109.x, x_1109.y, x_1109.z));
  let x_1114 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1114, 0.0f, 1.0f);
  let x_1118 : vec4<f32> = u_xlat5;
  let x_1120 : vec4<f32> = u_xlat1;
  u_xlat18 = dot(vec3<f32>(x_1118.x, x_1118.y, x_1118.z), vec3<f32>(x_1120.x, x_1120.y, x_1120.z));
  let x_1123 : f32 = u_xlat18;
  u_xlat18 = clamp(x_1123, 0.0f, 1.0f);
  let x_1126 : vec4<f32> = x_38.x_WorldSpaceLightPos0;
  let x_1128 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_1126.x, x_1126.y, x_1126.z), vec3<f32>(x_1128.x, x_1128.y, x_1128.z));
  let x_1133 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1133, 0.0f, 1.0f);
  let x_1138 : f32 = u_xlat1.x;
  let x_1140 : f32 = u_xlat1.x;
  u_xlat17 = (x_1138 * x_1140);
  let x_1142 : f32 = u_xlat17;
  let x_1144 : vec4<f32> = u_xlat6;
  u_xlat17 = dot(vec2<f32>(x_1142, x_1142), vec2<f32>(x_1144.z, x_1144.z));
  let x_1147 : f32 = u_xlat17;
  u_xlat17 = (x_1147 + -0.5f);
  let x_1152 : f32 = u_xlat2.x;
  u_xlat33 = (-(x_1152) + 1.0f);
  let x_1156 : f32 = u_xlat33;
  let x_1157 : f32 = u_xlat33;
  u_xlat34 = (x_1156 * x_1157);
  let x_1159 : f32 = u_xlat34;
  let x_1160 : f32 = u_xlat34;
  u_xlat34 = (x_1159 * x_1160);
  let x_1162 : f32 = u_xlat33;
  let x_1163 : f32 = u_xlat34;
  u_xlat33 = (x_1162 * x_1163);
  let x_1165 : f32 = u_xlat17;
  let x_1166 : f32 = u_xlat33;
  u_xlat33 = ((x_1165 * x_1166) + 1.0f);
  let x_1169 : f32 = u_xlat48;
  u_xlat34 = (-(abs(x_1169)) + 1.0f);
  let x_1173 : f32 = u_xlat34;
  let x_1174 : f32 = u_xlat34;
  u_xlat51 = (x_1173 * x_1174);
  let x_1176 : f32 = u_xlat51;
  let x_1177 : f32 = u_xlat51;
  u_xlat51 = (x_1176 * x_1177);
  let x_1179 : f32 = u_xlat34;
  let x_1180 : f32 = u_xlat51;
  u_xlat34 = (x_1179 * x_1180);
  let x_1182 : f32 = u_xlat17;
  let x_1183 : f32 = u_xlat34;
  u_xlat17 = ((x_1182 * x_1183) + 1.0f);
  let x_1186 : f32 = u_xlat17;
  let x_1187 : f32 = u_xlat33;
  u_xlat17 = (x_1186 * x_1187);
  let x_1190 : f32 = u_xlat2.x;
  let x_1191 : f32 = u_xlat17;
  u_xlat17 = (x_1190 * x_1191);
  let x_1194 : f32 = u_xlat6.z;
  let x_1196 : f32 = u_xlat6.z;
  u_xlat33 = (x_1194 * x_1196);
  let x_1198 : f32 = u_xlat33;
  u_xlat33 = max(x_1198, 0.002f);
  let x_1201 : f32 = u_xlat33;
  u_xlat51 = (-(x_1201) + 1.0f);
  let x_1204 : f32 = u_xlat48;
  let x_1206 : f32 = u_xlat51;
  let x_1208 : f32 = u_xlat33;
  u_xlat4.x = ((abs(x_1204) * x_1206) + x_1208);
  let x_1212 : f32 = u_xlat2.x;
  let x_1213 : f32 = u_xlat51;
  let x_1215 : f32 = u_xlat33;
  u_xlat51 = ((x_1212 * x_1213) + x_1215);
  let x_1217 : f32 = u_xlat48;
  let x_1219 : f32 = u_xlat51;
  u_xlat48 = (abs(x_1217) * x_1219);
  let x_1222 : f32 = u_xlat2.x;
  let x_1224 : f32 = u_xlat4.x;
  let x_1226 : f32 = u_xlat48;
  u_xlat48 = ((x_1222 * x_1224) + x_1226);
  let x_1228 : f32 = u_xlat48;
  u_xlat48 = (x_1228 + 0.00001f);
  let x_1231 : f32 = u_xlat48;
  u_xlat48 = (0.5f / x_1231);
  let x_1233 : f32 = u_xlat33;
  let x_1234 : f32 = u_xlat33;
  u_xlat51 = (x_1233 * x_1234);
  let x_1236 : f32 = u_xlat18;
  let x_1237 : f32 = u_xlat51;
  let x_1239 : f32 = u_xlat18;
  u_xlat4.x = ((x_1236 * x_1237) + -(x_1239));
  let x_1244 : f32 = u_xlat4.x;
  let x_1245 : f32 = u_xlat18;
  u_xlat18 = ((x_1244 * x_1245) + 1.0f);
  let x_1248 : f32 = u_xlat51;
  u_xlat51 = (x_1248 * 0.318309873f);
  let x_1251 : f32 = u_xlat18;
  let x_1252 : f32 = u_xlat18;
  u_xlat18 = ((x_1251 * x_1252) + 0.0000001f);
  let x_1256 : f32 = u_xlat51;
  let x_1257 : f32 = u_xlat18;
  u_xlat18 = (x_1256 / x_1257);
  let x_1259 : f32 = u_xlat48;
  let x_1260 : f32 = u_xlat18;
  u_xlat48 = (x_1259 * x_1260);
  let x_1263 : f32 = u_xlat2.x;
  let x_1264 : f32 = u_xlat48;
  u_xlat48 = (x_1263 * x_1264);
  let x_1266 : f32 = u_xlat48;
  u_xlat48 = (x_1266 * 3.141592741f);
  let x_1269 : f32 = u_xlat48;
  u_xlat48 = max(x_1269, 0.0f);
  let x_1271 : f32 = u_xlat33;
  let x_1272 : f32 = u_xlat33;
  u_xlat33 = ((x_1271 * x_1272) + 1.0f);
  let x_1275 : f32 = u_xlat33;
  u_xlat1.z = (1.0f / x_1275);
  let x_1278 : vec4<f32> = u_xlat7;
  let x_1280 : vec4<f32> = u_xlat7;
  u_xlat2.x = dot(vec3<f32>(x_1278.x, x_1278.y, x_1278.z), vec3<f32>(x_1280.x, x_1280.y, x_1280.z));
  let x_1286 : f32 = u_xlat2.x;
  u_xlatb2 = !((x_1286 == 0.0f));
  let x_1288 : bool = u_xlatb2;
  u_xlat2.x = select(0.0f, 1.0f, x_1288);
  let x_1291 : f32 = u_xlat48;
  let x_1293 : f32 = u_xlat2.x;
  u_xlat48 = (x_1291 * x_1293);
  let x_1295 : f32 = u_xlat50;
  let x_1298 : f32 = u_xlat4.w;
  u_xlat2.x = (-(x_1295) + x_1298);
  let x_1302 : f32 = u_xlat2.x;
  u_xlat2.x = (x_1302 + 1.0f);
  let x_1306 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1306, 0.0f, 1.0f);
  let x_1309 : f32 = u_xlat17;
  let x_1311 : vec3<f32> = u_xlat8;
  let x_1312 : vec3<f32> = (vec3<f32>(x_1309, x_1309, x_1309) * x_1311);
  let x_1313 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1312.x, x_1312.y, x_1312.z, x_1313.w);
  let x_1315 : vec4<f32> = u_xlat9;
  let x_1317 : f32 = u_xlat49;
  let x_1320 : vec4<f32> = u_xlat4;
  let x_1322 : vec3<f32> = ((vec3<f32>(x_1315.x, x_1315.y, x_1315.z) * vec3<f32>(x_1317, x_1317, x_1317)) + vec3<f32>(x_1320.x, x_1320.y, x_1320.z));
  let x_1323 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1322.x, x_1322.y, x_1322.z, x_1323.w);
  let x_1325 : vec3<f32> = u_xlat8;
  let x_1326 : f32 = u_xlat48;
  let x_1328 : vec3<f32> = (x_1325 * vec3<f32>(x_1326, x_1326, x_1326));
  let x_1329 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1328.x, x_1328.y, x_1328.z, x_1329.w);
  let x_1332 : f32 = u_xlat1.x;
  u_xlat0.w = (-(x_1332) + 1.0f);
  let x_1337 : f32 = u_xlat0.w;
  let x_1339 : f32 = u_xlat0.w;
  u_xlat1.x = (x_1337 * x_1339);
  let x_1343 : f32 = u_xlat1.x;
  let x_1345 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1343 * x_1345);
  let x_1348 : vec4<f32> = u_xlat0;
  let x_1349 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_1348 * vec4<f32>(x_1349.z, x_1349.z, x_1349.z, x_1349.x));
  let x_1352 : vec4<f32> = u_xlat7;
  let x_1355 : vec3<f32> = (-(vec3<f32>(x_1352.x, x_1352.y, x_1352.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1356 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1355.x, x_1355.y, x_1356.z, x_1355.z);
  let x_1358 : vec4<f32> = u_xlat1;
  let x_1360 : vec4<f32> = u_xlat0;
  let x_1363 : vec4<f32> = u_xlat7;
  let x_1365 : vec3<f32> = ((vec3<f32>(x_1358.x, x_1358.y, x_1358.w) * vec3<f32>(x_1360.w, x_1360.w, x_1360.w)) + vec3<f32>(x_1363.x, x_1363.y, x_1363.z));
  let x_1366 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1365.x, x_1365.y, x_1366.z, x_1365.z);
  let x_1368 : vec4<f32> = u_xlat1;
  let x_1370 : vec4<f32> = u_xlat5;
  let x_1372 : vec3<f32> = (vec3<f32>(x_1368.x, x_1368.y, x_1368.w) * vec3<f32>(x_1370.x, x_1370.y, x_1370.z));
  let x_1373 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1372.x, x_1372.y, x_1373.z, x_1372.z);
  let x_1375 : vec3<f32> = u_xlat3;
  let x_1376 : vec4<f32> = u_xlat4;
  let x_1379 : vec4<f32> = u_xlat1;
  let x_1381 : vec3<f32> = ((x_1375 * vec3<f32>(x_1376.x, x_1376.y, x_1376.z)) + vec3<f32>(x_1379.x, x_1379.y, x_1379.w));
  let x_1382 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1381.x, x_1381.y, x_1382.z, x_1381.z);
  let x_1384 : vec4<f32> = u_xlat7;
  let x_1387 : vec4<f32> = u_xlat2;
  let x_1389 : vec3<f32> = (-(vec3<f32>(x_1384.x, x_1384.y, x_1384.z)) + vec3<f32>(x_1387.x, x_1387.x, x_1387.x));
  let x_1390 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1389.x, x_1389.y, x_1390.z, x_1389.z);
  let x_1392 : f32 = u_xlat34;
  let x_1394 : vec4<f32> = u_xlat2;
  let x_1397 : vec4<f32> = u_xlat7;
  let x_1399 : vec3<f32> = ((vec3<f32>(x_1392, x_1392, x_1392) * vec3<f32>(x_1394.x, x_1394.y, x_1394.w)) + vec3<f32>(x_1397.x, x_1397.y, x_1397.z));
  let x_1400 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1399.x, x_1399.y, x_1399.z, x_1400.w);
  let x_1402 : vec4<f32> = u_xlat0;
  let x_1404 : vec4<f32> = u_xlat2;
  let x_1407 : vec4<f32> = u_xlat1;
  let x_1409 : vec3<f32> = ((vec3<f32>(x_1402.x, x_1402.y, x_1402.z) * vec3<f32>(x_1404.x, x_1404.y, x_1404.z)) + vec3<f32>(x_1407.x, x_1407.y, x_1407.w));
  let x_1410 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1409.x, x_1409.y, x_1409.z, x_1410.w);
  let x_1414 : vec4<f32> = u_xlat6;
  let x_1416 : vec4<f32> = u_xlat0;
  let x_1418 : vec3<f32> = (vec3<f32>(x_1414.x, x_1414.y, x_1414.w) + vec3<f32>(x_1416.x, x_1416.y, x_1416.z));
  let x_1419 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1418.x, x_1418.y, x_1418.z, x_1419.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(5) vs_TEXCOORD6_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
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

