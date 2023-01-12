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
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
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
  var x_730 : f32;
  var x_742 : f32;
  var x_754 : f32;
  var u_xlat13 : vec3<f32>;
  var u_xlat14 : vec3<f32>;
  var u_xlatb15 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_911 : f32;
  var x_923 : f32;
  var x_935 : f32;
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
    let x_636 : vec4<f32> = x_38.unity_SHAr;
    let x_637 : vec4<f32> = u_xlat5;
    u_xlat10.x = dot(x_636, x_637);
    let x_642 : vec4<f32> = x_38.unity_SHAg;
    let x_643 : vec4<f32> = u_xlat5;
    u_xlat10.y = dot(x_642, x_643);
    let x_648 : vec4<f32> = x_38.unity_SHAb;
    let x_649 : vec4<f32> = u_xlat5;
    u_xlat10.z = dot(x_648, x_649);
  }
  let x_652 : vec4<f32> = u_xlat10;
  let x_656 : vec3<f32> = vs_TEXCOORD4;
  let x_657 : vec3<f32> = (vec3<f32>(x_652.x, x_652.y, x_652.z) + x_656);
  let x_658 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_657.x, x_657.y, x_657.z, x_658.w);
  let x_660 : vec4<f32> = u_xlat9;
  let x_663 : vec3<f32> = max(vec3<f32>(x_660.x, x_660.y, x_660.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_664 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_663.x, x_663.y, x_663.z, x_664.w);
  let x_668 : f32 = x_38.unity_SpecCube0_ProbePosition.w;
  u_xlatb50 = (0.0f < x_668);
  let x_670 : bool = u_xlatb50;
  if (x_670) {
    let x_673 : vec4<f32> = u_xlat7;
    let x_675 : vec4<f32> = u_xlat7;
    u_xlat50 = dot(vec3<f32>(x_673.x, x_673.y, x_673.z), vec3<f32>(x_675.x, x_675.y, x_675.z));
    let x_678 : f32 = u_xlat50;
    u_xlat50 = inverseSqrt(x_678);
    let x_680 : f32 = u_xlat50;
    let x_682 : vec4<f32> = u_xlat7;
    let x_684 : vec3<f32> = (vec3<f32>(x_680, x_680, x_680) * vec3<f32>(x_682.x, x_682.y, x_682.z));
    let x_685 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_684.x, x_684.y, x_684.z, x_685.w);
    let x_687 : vec4<f32> = u_xlat0;
    let x_692 : vec4<f32> = x_38.unity_SpecCube0_BoxMax;
    let x_694 : vec3<f32> = (-(vec3<f32>(x_687.x, x_687.y, x_687.z)) + vec3<f32>(x_692.x, x_692.y, x_692.z));
    let x_695 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_694.x, x_694.y, x_694.z, x_695.w);
    let x_697 : vec4<f32> = u_xlat11;
    let x_699 : vec4<f32> = u_xlat10;
    let x_701 : vec3<f32> = (vec3<f32>(x_697.x, x_697.y, x_697.z) / vec3<f32>(x_699.x, x_699.y, x_699.z));
    let x_702 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_701.x, x_701.y, x_701.z, x_702.w);
    let x_705 : vec4<f32> = u_xlat0;
    let x_710 : vec4<f32> = x_38.unity_SpecCube0_BoxMin;
    u_xlat12 = (-(vec3<f32>(x_705.x, x_705.y, x_705.z)) + vec3<f32>(x_710.x, x_710.y, x_710.z));
    let x_713 : vec3<f32> = u_xlat12;
    let x_714 : vec4<f32> = u_xlat10;
    u_xlat12 = (x_713 / vec3<f32>(x_714.x, x_714.y, x_714.z));
    let x_721 : vec4<f32> = u_xlat10;
    let x_724 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_721.x, x_721.y, x_721.z, x_721.x));
    u_xlatb13 = vec3<bool>(x_724.x, x_724.y, x_724.z);
    let x_727 : vec4<f32> = u_xlat11;
    hlslcc_movcTemp = x_727;
    let x_729 : bool = u_xlatb13.x;
    if (x_729) {
      let x_734 : f32 = u_xlat11.x;
      x_730 = x_734;
    } else {
      let x_737 : f32 = u_xlat12.x;
      x_730 = x_737;
    }
    let x_738 : f32 = x_730;
    hlslcc_movcTemp.x = x_738;
    let x_741 : bool = u_xlatb13.y;
    if (x_741) {
      let x_746 : f32 = u_xlat11.y;
      x_742 = x_746;
    } else {
      let x_749 : f32 = u_xlat12.y;
      x_742 = x_749;
    }
    let x_750 : f32 = x_742;
    hlslcc_movcTemp.y = x_750;
    let x_753 : bool = u_xlatb13.z;
    if (x_753) {
      let x_758 : f32 = u_xlat11.z;
      x_754 = x_758;
    } else {
      let x_761 : f32 = u_xlat12.z;
      x_754 = x_761;
    }
    let x_762 : f32 = x_754;
    hlslcc_movcTemp.z = x_762;
    let x_764 : vec4<f32> = hlslcc_movcTemp;
    u_xlat11 = x_764;
    let x_766 : f32 = u_xlat11.y;
    let x_768 : f32 = u_xlat11.x;
    u_xlat50 = min(x_766, x_768);
    let x_771 : f32 = u_xlat11.z;
    let x_772 : f32 = u_xlat50;
    u_xlat50 = min(x_771, x_772);
    let x_774 : vec4<f32> = u_xlat0;
    let x_777 : vec4<f32> = x_38.unity_SpecCube0_ProbePosition;
    let x_780 : vec3<f32> = (vec3<f32>(x_774.x, x_774.y, x_774.z) + -(vec3<f32>(x_777.x, x_777.y, x_777.z)));
    let x_781 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_780.x, x_780.y, x_780.z, x_781.w);
    let x_783 : vec4<f32> = u_xlat10;
    let x_785 : f32 = u_xlat50;
    let x_788 : vec4<f32> = u_xlat11;
    let x_790 : vec3<f32> = ((vec3<f32>(x_783.x, x_783.y, x_783.z) * vec3<f32>(x_785, x_785, x_785)) + vec3<f32>(x_788.x, x_788.y, x_788.z));
    let x_791 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_790.x, x_790.y, x_790.z, x_791.w);
  } else {
    let x_794 : vec4<f32> = u_xlat7;
    let x_795 : vec3<f32> = vec3<f32>(x_794.x, x_794.y, x_794.z);
    let x_796 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_795.x, x_795.y, x_795.z, x_796.w);
  }
  let x_799 : f32 = u_xlat6.z;
  u_xlat50 = ((-(x_799) * 0.699999988f) + 1.700000048f);
  let x_805 : f32 = u_xlat50;
  let x_807 : f32 = u_xlat6.z;
  u_xlat50 = (x_805 * x_807);
  let x_809 : f32 = u_xlat50;
  u_xlat50 = (x_809 * 6.0f);
  let x_820 : vec4<f32> = u_xlat10;
  let x_822 : f32 = u_xlat50;
  let x_823 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_820.x, x_820.y, x_820.z), x_822);
  u_xlat10 = x_823;
  let x_825 : f32 = u_xlat10.w;
  u_xlat51 = (x_825 + -1.0f);
  let x_829 : f32 = x_38.unity_SpecCube0_HDR.w;
  let x_830 : f32 = u_xlat51;
  u_xlat51 = ((x_829 * x_830) + 1.0f);
  let x_833 : f32 = u_xlat51;
  u_xlat51 = log2(x_833);
  let x_835 : f32 = u_xlat51;
  let x_837 : f32 = x_38.unity_SpecCube0_HDR.y;
  u_xlat51 = (x_835 * x_837);
  let x_839 : f32 = u_xlat51;
  u_xlat51 = exp2(x_839);
  let x_841 : f32 = u_xlat51;
  let x_843 : f32 = x_38.unity_SpecCube0_HDR.x;
  u_xlat51 = (x_841 * x_843);
  let x_845 : vec4<f32> = u_xlat10;
  let x_847 : f32 = u_xlat51;
  let x_849 : vec3<f32> = (vec3<f32>(x_845.x, x_845.y, x_845.z) * vec3<f32>(x_847, x_847, x_847));
  let x_850 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_849.x, x_849.y, x_849.z, x_850.w);
  let x_853 : f32 = x_38.unity_SpecCube0_BoxMin.w;
  u_xlatb20 = (x_853 < 0.999989986f);
  let x_856 : bool = u_xlatb20;
  if (x_856) {
    let x_861 : f32 = x_38.unity_SpecCube1_ProbePosition.w;
    u_xlatb20 = (0.0f < x_861);
    let x_863 : bool = u_xlatb20;
    if (x_863) {
      let x_866 : vec4<f32> = u_xlat7;
      let x_868 : vec4<f32> = u_xlat7;
      u_xlat20 = dot(vec3<f32>(x_866.x, x_866.y, x_866.z), vec3<f32>(x_868.x, x_868.y, x_868.z));
      let x_871 : f32 = u_xlat20;
      u_xlat20 = inverseSqrt(x_871);
      let x_873 : f32 = u_xlat20;
      let x_875 : vec4<f32> = u_xlat7;
      u_xlat12 = (vec3<f32>(x_873, x_873, x_873) * vec3<f32>(x_875.x, x_875.y, x_875.z));
      let x_879 : vec4<f32> = u_xlat0;
      let x_884 : vec4<f32> = x_38.unity_SpecCube1_BoxMax;
      u_xlat13 = (-(vec3<f32>(x_879.x, x_879.y, x_879.z)) + vec3<f32>(x_884.x, x_884.y, x_884.z));
      let x_887 : vec3<f32> = u_xlat13;
      let x_888 : vec3<f32> = u_xlat12;
      u_xlat13 = (x_887 / x_888);
      let x_891 : vec4<f32> = u_xlat0;
      let x_896 : vec4<f32> = x_38.unity_SpecCube1_BoxMin;
      u_xlat14 = (-(vec3<f32>(x_891.x, x_891.y, x_891.z)) + vec3<f32>(x_896.x, x_896.y, x_896.z));
      let x_899 : vec3<f32> = u_xlat14;
      let x_900 : vec3<f32> = u_xlat12;
      u_xlat14 = (x_899 / x_900);
      let x_903 : vec3<f32> = u_xlat12;
      let x_905 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_903.x, x_903.y, x_903.z, x_903.x));
      u_xlatb15 = vec3<bool>(x_905.x, x_905.y, x_905.z);
      let x_908 : vec3<f32> = u_xlat13;
      hlslcc_movcTemp_1 = x_908;
      let x_910 : bool = u_xlatb15.x;
      if (x_910) {
        let x_915 : f32 = u_xlat13.x;
        x_911 = x_915;
      } else {
        let x_918 : f32 = u_xlat14.x;
        x_911 = x_918;
      }
      let x_919 : f32 = x_911;
      hlslcc_movcTemp_1.x = x_919;
      let x_922 : bool = u_xlatb15.y;
      if (x_922) {
        let x_927 : f32 = u_xlat13.y;
        x_923 = x_927;
      } else {
        let x_930 : f32 = u_xlat14.y;
        x_923 = x_930;
      }
      let x_931 : f32 = x_923;
      hlslcc_movcTemp_1.y = x_931;
      let x_934 : bool = u_xlatb15.z;
      if (x_934) {
        let x_939 : f32 = u_xlat13.z;
        x_935 = x_939;
      } else {
        let x_942 : f32 = u_xlat14.z;
        x_935 = x_942;
      }
      let x_943 : f32 = x_935;
      hlslcc_movcTemp_1.z = x_943;
      let x_945 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat13 = x_945;
      let x_947 : f32 = u_xlat13.y;
      let x_949 : f32 = u_xlat13.x;
      u_xlat20 = min(x_947, x_949);
      let x_952 : f32 = u_xlat13.z;
      let x_953 : f32 = u_xlat20;
      u_xlat20 = min(x_952, x_953);
      let x_955 : vec4<f32> = u_xlat0;
      let x_958 : vec4<f32> = x_38.unity_SpecCube1_ProbePosition;
      let x_961 : vec3<f32> = (vec3<f32>(x_955.x, x_955.y, x_955.z) + -(vec3<f32>(x_958.x, x_958.y, x_958.z)));
      let x_962 : vec4<f32> = u_xlat0;
      u_xlat0 = vec4<f32>(x_961.x, x_961.y, x_961.z, x_962.w);
      let x_964 : vec3<f32> = u_xlat12;
      let x_965 : f32 = u_xlat20;
      let x_968 : vec4<f32> = u_xlat0;
      let x_970 : vec3<f32> = ((x_964 * vec3<f32>(x_965, x_965, x_965)) + vec3<f32>(x_968.x, x_968.y, x_968.z));
      let x_971 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_970.x, x_970.y, x_970.z, x_971.w);
    }
    let x_977 : vec4<f32> = u_xlat7;
    let x_979 : f32 = u_xlat50;
    let x_980 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_977.x, x_977.y, x_977.z), x_979);
    u_xlat7 = x_980;
    let x_982 : f32 = u_xlat7.w;
    u_xlat0.x = (x_982 + -1.0f);
    let x_987 : f32 = x_38.unity_SpecCube1_HDR.w;
    let x_989 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_987 * x_989) + 1.0f);
    let x_994 : f32 = u_xlat0.x;
    u_xlat0.x = log2(x_994);
    let x_998 : f32 = u_xlat0.x;
    let x_1000 : f32 = x_38.unity_SpecCube1_HDR.y;
    u_xlat0.x = (x_998 * x_1000);
    let x_1004 : f32 = u_xlat0.x;
    u_xlat0.x = exp2(x_1004);
    let x_1008 : f32 = u_xlat0.x;
    let x_1010 : f32 = x_38.unity_SpecCube1_HDR.x;
    u_xlat0.x = (x_1008 * x_1010);
    let x_1013 : vec4<f32> = u_xlat7;
    let x_1015 : vec4<f32> = u_xlat0;
    let x_1017 : vec3<f32> = (vec3<f32>(x_1013.x, x_1013.y, x_1013.z) * vec3<f32>(x_1015.x, x_1015.x, x_1015.x));
    let x_1018 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1017.x, x_1017.y, x_1017.z, x_1018.w);
    let x_1020 : f32 = u_xlat51;
    let x_1022 : vec4<f32> = u_xlat10;
    let x_1025 : vec4<f32> = u_xlat0;
    let x_1028 : vec3<f32> = ((vec3<f32>(x_1020, x_1020, x_1020) * vec3<f32>(x_1022.x, x_1022.y, x_1022.z)) + -(vec3<f32>(x_1025.x, x_1025.y, x_1025.z)));
    let x_1029 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1028.x, x_1028.y, x_1028.z, x_1029.w);
    let x_1032 : vec4<f32> = x_38.unity_SpecCube0_BoxMin;
    let x_1034 : vec4<f32> = u_xlat7;
    let x_1037 : vec4<f32> = u_xlat0;
    let x_1039 : vec3<f32> = ((vec3<f32>(x_1032.w, x_1032.w, x_1032.w) * vec3<f32>(x_1034.x, x_1034.y, x_1034.z)) + vec3<f32>(x_1037.x, x_1037.y, x_1037.z));
    let x_1040 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1039.x, x_1039.y, x_1039.z, x_1040.w);
  }
  let x_1042 : f32 = u_xlat49;
  let x_1044 : vec4<f32> = u_xlat11;
  let x_1046 : vec3<f32> = (vec3<f32>(x_1042, x_1042, x_1042) * vec3<f32>(x_1044.x, x_1044.y, x_1044.z));
  let x_1047 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1046.x, x_1046.y, x_1046.z, x_1047.w);
  let x_1049 : vec3<f32> = u_xlat3;
  let x_1051 : vec3<f32> = (x_1049 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_1052 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1051.x, x_1051.y, x_1051.z, x_1052.w);
  let x_1054 : vec4<f32> = u_xlat4;
  let x_1056 : vec4<f32> = u_xlat7;
  let x_1061 : vec3<f32> = ((vec3<f32>(x_1054.x, x_1054.x, x_1054.x) * vec3<f32>(x_1056.x, x_1056.y, x_1056.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_1062 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1061.x, x_1061.y, x_1061.z, x_1062.w);
  let x_1065 : f32 = u_xlat4.x;
  u_xlat50 = ((-(x_1065) * 0.959999979f) + 0.959999979f);
  let x_1070 : f32 = u_xlat50;
  let x_1072 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_1070, x_1070, x_1070) * x_1072);
  let x_1074 : vec4<f32> = u_xlat1;
  let x_1076 : f32 = u_xlat48;
  let x_1080 : vec4<f32> = x_38.x_WorldSpaceLightPos0;
  let x_1082 : vec3<f32> = ((vec3<f32>(x_1074.x, x_1074.y, x_1074.z) * vec3<f32>(x_1076, x_1076, x_1076)) + vec3<f32>(x_1080.x, x_1080.y, x_1080.z));
  let x_1083 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1082.x, x_1082.y, x_1082.z, x_1083.w);
  let x_1085 : vec4<f32> = u_xlat1;
  let x_1087 : vec4<f32> = u_xlat1;
  u_xlat48 = dot(vec3<f32>(x_1085.x, x_1085.y, x_1085.z), vec3<f32>(x_1087.x, x_1087.y, x_1087.z));
  let x_1090 : f32 = u_xlat48;
  u_xlat48 = max(x_1090, 0.001f);
  let x_1093 : f32 = u_xlat48;
  u_xlat48 = inverseSqrt(x_1093);
  let x_1095 : f32 = u_xlat48;
  let x_1097 : vec4<f32> = u_xlat1;
  let x_1099 : vec3<f32> = (vec3<f32>(x_1095, x_1095, x_1095) * vec3<f32>(x_1097.x, x_1097.y, x_1097.z));
  let x_1100 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1099.x, x_1099.y, x_1099.z, x_1100.w);
  let x_1102 : vec4<f32> = u_xlat5;
  let x_1104 : vec4<f32> = u_xlat2;
  u_xlat48 = dot(vec3<f32>(x_1102.x, x_1102.y, x_1102.z), vec3<f32>(x_1104.x, x_1104.y, x_1104.z));
  let x_1107 : vec4<f32> = u_xlat5;
  let x_1110 : vec4<f32> = x_38.x_WorldSpaceLightPos0;
  u_xlat2.x = dot(vec3<f32>(x_1107.x, x_1107.y, x_1107.z), vec3<f32>(x_1110.x, x_1110.y, x_1110.z));
  let x_1115 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1115, 0.0f, 1.0f);
  let x_1119 : vec4<f32> = u_xlat5;
  let x_1121 : vec4<f32> = u_xlat1;
  u_xlat18 = dot(vec3<f32>(x_1119.x, x_1119.y, x_1119.z), vec3<f32>(x_1121.x, x_1121.y, x_1121.z));
  let x_1124 : f32 = u_xlat18;
  u_xlat18 = clamp(x_1124, 0.0f, 1.0f);
  let x_1127 : vec4<f32> = x_38.x_WorldSpaceLightPos0;
  let x_1129 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_1127.x, x_1127.y, x_1127.z), vec3<f32>(x_1129.x, x_1129.y, x_1129.z));
  let x_1134 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1134, 0.0f, 1.0f);
  let x_1139 : f32 = u_xlat1.x;
  let x_1141 : f32 = u_xlat1.x;
  u_xlat17 = (x_1139 * x_1141);
  let x_1143 : f32 = u_xlat17;
  let x_1145 : vec4<f32> = u_xlat6;
  u_xlat17 = dot(vec2<f32>(x_1143, x_1143), vec2<f32>(x_1145.z, x_1145.z));
  let x_1148 : f32 = u_xlat17;
  u_xlat17 = (x_1148 + -0.5f);
  let x_1153 : f32 = u_xlat2.x;
  u_xlat33 = (-(x_1153) + 1.0f);
  let x_1157 : f32 = u_xlat33;
  let x_1158 : f32 = u_xlat33;
  u_xlat34 = (x_1157 * x_1158);
  let x_1160 : f32 = u_xlat34;
  let x_1161 : f32 = u_xlat34;
  u_xlat34 = (x_1160 * x_1161);
  let x_1163 : f32 = u_xlat33;
  let x_1164 : f32 = u_xlat34;
  u_xlat33 = (x_1163 * x_1164);
  let x_1166 : f32 = u_xlat17;
  let x_1167 : f32 = u_xlat33;
  u_xlat33 = ((x_1166 * x_1167) + 1.0f);
  let x_1170 : f32 = u_xlat48;
  u_xlat34 = (-(abs(x_1170)) + 1.0f);
  let x_1174 : f32 = u_xlat34;
  let x_1175 : f32 = u_xlat34;
  u_xlat51 = (x_1174 * x_1175);
  let x_1177 : f32 = u_xlat51;
  let x_1178 : f32 = u_xlat51;
  u_xlat51 = (x_1177 * x_1178);
  let x_1180 : f32 = u_xlat34;
  let x_1181 : f32 = u_xlat51;
  u_xlat34 = (x_1180 * x_1181);
  let x_1183 : f32 = u_xlat17;
  let x_1184 : f32 = u_xlat34;
  u_xlat17 = ((x_1183 * x_1184) + 1.0f);
  let x_1187 : f32 = u_xlat17;
  let x_1188 : f32 = u_xlat33;
  u_xlat17 = (x_1187 * x_1188);
  let x_1191 : f32 = u_xlat2.x;
  let x_1192 : f32 = u_xlat17;
  u_xlat17 = (x_1191 * x_1192);
  let x_1195 : f32 = u_xlat6.z;
  let x_1197 : f32 = u_xlat6.z;
  u_xlat33 = (x_1195 * x_1197);
  let x_1199 : f32 = u_xlat33;
  u_xlat33 = max(x_1199, 0.002f);
  let x_1202 : f32 = u_xlat33;
  u_xlat51 = (-(x_1202) + 1.0f);
  let x_1205 : f32 = u_xlat48;
  let x_1207 : f32 = u_xlat51;
  let x_1209 : f32 = u_xlat33;
  u_xlat4.x = ((abs(x_1205) * x_1207) + x_1209);
  let x_1213 : f32 = u_xlat2.x;
  let x_1214 : f32 = u_xlat51;
  let x_1216 : f32 = u_xlat33;
  u_xlat51 = ((x_1213 * x_1214) + x_1216);
  let x_1218 : f32 = u_xlat48;
  let x_1220 : f32 = u_xlat51;
  u_xlat48 = (abs(x_1218) * x_1220);
  let x_1223 : f32 = u_xlat2.x;
  let x_1225 : f32 = u_xlat4.x;
  let x_1227 : f32 = u_xlat48;
  u_xlat48 = ((x_1223 * x_1225) + x_1227);
  let x_1229 : f32 = u_xlat48;
  u_xlat48 = (x_1229 + 0.00001f);
  let x_1232 : f32 = u_xlat48;
  u_xlat48 = (0.5f / x_1232);
  let x_1234 : f32 = u_xlat33;
  let x_1235 : f32 = u_xlat33;
  u_xlat51 = (x_1234 * x_1235);
  let x_1237 : f32 = u_xlat18;
  let x_1238 : f32 = u_xlat51;
  let x_1240 : f32 = u_xlat18;
  u_xlat4.x = ((x_1237 * x_1238) + -(x_1240));
  let x_1245 : f32 = u_xlat4.x;
  let x_1246 : f32 = u_xlat18;
  u_xlat18 = ((x_1245 * x_1246) + 1.0f);
  let x_1249 : f32 = u_xlat51;
  u_xlat51 = (x_1249 * 0.318309873f);
  let x_1252 : f32 = u_xlat18;
  let x_1253 : f32 = u_xlat18;
  u_xlat18 = ((x_1252 * x_1253) + 0.0000001f);
  let x_1257 : f32 = u_xlat51;
  let x_1258 : f32 = u_xlat18;
  u_xlat18 = (x_1257 / x_1258);
  let x_1260 : f32 = u_xlat48;
  let x_1261 : f32 = u_xlat18;
  u_xlat48 = (x_1260 * x_1261);
  let x_1264 : f32 = u_xlat2.x;
  let x_1265 : f32 = u_xlat48;
  u_xlat48 = (x_1264 * x_1265);
  let x_1267 : f32 = u_xlat48;
  u_xlat48 = (x_1267 * 3.141592741f);
  let x_1270 : f32 = u_xlat48;
  u_xlat48 = max(x_1270, 0.0f);
  let x_1272 : f32 = u_xlat33;
  let x_1273 : f32 = u_xlat33;
  u_xlat33 = ((x_1272 * x_1273) + 1.0f);
  let x_1276 : f32 = u_xlat33;
  u_xlat1.z = (1.0f / x_1276);
  let x_1279 : vec4<f32> = u_xlat7;
  let x_1281 : vec4<f32> = u_xlat7;
  u_xlat2.x = dot(vec3<f32>(x_1279.x, x_1279.y, x_1279.z), vec3<f32>(x_1281.x, x_1281.y, x_1281.z));
  let x_1287 : f32 = u_xlat2.x;
  u_xlatb2 = !((x_1287 == 0.0f));
  let x_1289 : bool = u_xlatb2;
  u_xlat2.x = select(0.0f, 1.0f, x_1289);
  let x_1292 : f32 = u_xlat48;
  let x_1294 : f32 = u_xlat2.x;
  u_xlat48 = (x_1292 * x_1294);
  let x_1296 : f32 = u_xlat50;
  let x_1299 : f32 = u_xlat4.w;
  u_xlat2.x = (-(x_1296) + x_1299);
  let x_1303 : f32 = u_xlat2.x;
  u_xlat2.x = (x_1303 + 1.0f);
  let x_1307 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1307, 0.0f, 1.0f);
  let x_1310 : f32 = u_xlat17;
  let x_1312 : vec3<f32> = u_xlat8;
  let x_1313 : vec3<f32> = (vec3<f32>(x_1310, x_1310, x_1310) * x_1312);
  let x_1314 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1313.x, x_1313.y, x_1313.z, x_1314.w);
  let x_1316 : vec4<f32> = u_xlat9;
  let x_1318 : f32 = u_xlat49;
  let x_1321 : vec4<f32> = u_xlat4;
  let x_1323 : vec3<f32> = ((vec3<f32>(x_1316.x, x_1316.y, x_1316.z) * vec3<f32>(x_1318, x_1318, x_1318)) + vec3<f32>(x_1321.x, x_1321.y, x_1321.z));
  let x_1324 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1323.x, x_1323.y, x_1323.z, x_1324.w);
  let x_1326 : vec3<f32> = u_xlat8;
  let x_1327 : f32 = u_xlat48;
  let x_1329 : vec3<f32> = (x_1326 * vec3<f32>(x_1327, x_1327, x_1327));
  let x_1330 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1329.x, x_1329.y, x_1329.z, x_1330.w);
  let x_1333 : f32 = u_xlat1.x;
  u_xlat0.w = (-(x_1333) + 1.0f);
  let x_1338 : f32 = u_xlat0.w;
  let x_1340 : f32 = u_xlat0.w;
  u_xlat1.x = (x_1338 * x_1340);
  let x_1344 : f32 = u_xlat1.x;
  let x_1346 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1344 * x_1346);
  let x_1349 : vec4<f32> = u_xlat0;
  let x_1350 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_1349 * vec4<f32>(x_1350.z, x_1350.z, x_1350.z, x_1350.x));
  let x_1353 : vec4<f32> = u_xlat7;
  let x_1356 : vec3<f32> = (-(vec3<f32>(x_1353.x, x_1353.y, x_1353.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1357 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1356.x, x_1356.y, x_1357.z, x_1356.z);
  let x_1359 : vec4<f32> = u_xlat1;
  let x_1361 : vec4<f32> = u_xlat0;
  let x_1364 : vec4<f32> = u_xlat7;
  let x_1366 : vec3<f32> = ((vec3<f32>(x_1359.x, x_1359.y, x_1359.w) * vec3<f32>(x_1361.w, x_1361.w, x_1361.w)) + vec3<f32>(x_1364.x, x_1364.y, x_1364.z));
  let x_1367 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1366.x, x_1366.y, x_1367.z, x_1366.z);
  let x_1369 : vec4<f32> = u_xlat1;
  let x_1371 : vec4<f32> = u_xlat5;
  let x_1373 : vec3<f32> = (vec3<f32>(x_1369.x, x_1369.y, x_1369.w) * vec3<f32>(x_1371.x, x_1371.y, x_1371.z));
  let x_1374 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1373.x, x_1373.y, x_1374.z, x_1373.z);
  let x_1376 : vec3<f32> = u_xlat3;
  let x_1377 : vec4<f32> = u_xlat4;
  let x_1380 : vec4<f32> = u_xlat1;
  let x_1382 : vec3<f32> = ((x_1376 * vec3<f32>(x_1377.x, x_1377.y, x_1377.z)) + vec3<f32>(x_1380.x, x_1380.y, x_1380.w));
  let x_1383 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1382.x, x_1382.y, x_1383.z, x_1382.z);
  let x_1385 : vec4<f32> = u_xlat7;
  let x_1388 : vec4<f32> = u_xlat2;
  let x_1390 : vec3<f32> = (-(vec3<f32>(x_1385.x, x_1385.y, x_1385.z)) + vec3<f32>(x_1388.x, x_1388.x, x_1388.x));
  let x_1391 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1390.x, x_1390.y, x_1391.z, x_1390.z);
  let x_1393 : f32 = u_xlat34;
  let x_1395 : vec4<f32> = u_xlat2;
  let x_1398 : vec4<f32> = u_xlat7;
  let x_1400 : vec3<f32> = ((vec3<f32>(x_1393, x_1393, x_1393) * vec3<f32>(x_1395.x, x_1395.y, x_1395.w)) + vec3<f32>(x_1398.x, x_1398.y, x_1398.z));
  let x_1401 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1400.x, x_1400.y, x_1400.z, x_1401.w);
  let x_1403 : vec4<f32> = u_xlat0;
  let x_1405 : vec4<f32> = u_xlat2;
  let x_1408 : vec4<f32> = u_xlat1;
  let x_1410 : vec3<f32> = ((vec3<f32>(x_1403.x, x_1403.y, x_1403.z) * vec3<f32>(x_1405.x, x_1405.y, x_1405.z)) + vec3<f32>(x_1408.x, x_1408.y, x_1408.w));
  let x_1411 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1410.x, x_1410.y, x_1410.z, x_1411.w);
  let x_1413 : vec4<f32> = u_xlat6;
  let x_1415 : vec4<f32> = u_xlat0;
  let x_1417 : vec3<f32> = (vec3<f32>(x_1413.x, x_1413.y, x_1413.w) + vec3<f32>(x_1415.x, x_1415.y, x_1415.z));
  let x_1418 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1417.x, x_1417.y, x_1417.z, x_1418.w);
  let x_1421 : f32 = vs_TEXCOORD5;
  let x_1423 : f32 = x_38.x_ProjectionParams.y;
  u_xlat48 = (x_1421 / x_1423);
  let x_1425 : f32 = u_xlat48;
  u_xlat48 = (-(x_1425) + 1.0f);
  let x_1428 : f32 = u_xlat48;
  let x_1430 : f32 = x_38.x_ProjectionParams.z;
  u_xlat48 = (x_1428 * x_1430);
  let x_1432 : f32 = u_xlat48;
  u_xlat48 = max(x_1432, 0.0f);
  let x_1434 : f32 = u_xlat48;
  let x_1437 : f32 = x_38.unity_FogParams.x;
  u_xlat48 = (x_1434 * x_1437);
  let x_1439 : f32 = u_xlat48;
  let x_1440 : f32 = u_xlat48;
  u_xlat48 = (x_1439 * -(x_1440));
  let x_1443 : f32 = u_xlat48;
  u_xlat48 = exp2(x_1443);
  let x_1445 : vec4<f32> = u_xlat0;
  let x_1449 : vec4<f32> = x_38.unity_FogColor;
  let x_1452 : vec3<f32> = (vec3<f32>(x_1445.x, x_1445.y, x_1445.z) + -(vec3<f32>(x_1449.x, x_1449.y, x_1449.z)));
  let x_1453 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1452.x, x_1452.y, x_1452.z, x_1453.w);
  let x_1457 : f32 = u_xlat48;
  let x_1459 : vec4<f32> = u_xlat0;
  let x_1463 : vec4<f32> = x_38.unity_FogColor;
  let x_1465 : vec3<f32> = ((vec3<f32>(x_1457, x_1457, x_1457) * vec3<f32>(x_1459.x, x_1459.y, x_1459.z)) + vec3<f32>(x_1463.x, x_1463.y, x_1463.z));
  let x_1466 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1465.x, x_1465.y, x_1465.z, x_1466.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(2) vs_TEXCOORD1_param : vec4<f32>, @location(3) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD3_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(6) vs_TEXCOORD6_param : vec4<f32>, @location(5) vs_TEXCOORD4_param : vec3<f32>, @location(1) vs_TEXCOORD5_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

