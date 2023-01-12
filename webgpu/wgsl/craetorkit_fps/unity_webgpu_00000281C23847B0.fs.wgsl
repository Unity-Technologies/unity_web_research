struct PGlobals {
  x_Time : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
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

@group(1) @binding(0) var<uniform> x_39 : PGlobals;

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

@group(0) @binding(4) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(5) var unity_SpecCube1 : texture_cube<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat45 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat46 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat47 : f32;
  var u_xlat48 : f32;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlatb47 : bool;
  var x_281 : vec3<f32>;
  var u_xlat8 : vec3<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlat11 : vec3<f32>;
  var u_xlatb12 : vec3<bool>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_461 : f32;
  var x_473 : f32;
  var x_485 : f32;
  var u_xlatb19 : bool;
  var u_xlat19 : f32;
  var u_xlat12 : vec3<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb14 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_639 : f32;
  var x_651 : f32;
  var x_663 : f32;
  var u_xlat17 : f32;
  var u_xlat16 : f32;
  var u_xlat31 : f32;
  var u_xlat32 : f32;
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
  let x_33 : vec4<f32> = u_xlat0;
  let x_44 : vec3<f32> = x_39.x_WorldSpaceCameraPos;
  u_xlat1 = (-(vec3<f32>(x_33.x, x_33.y, x_33.z)) + x_44);
  let x_47 : vec3<f32> = u_xlat1;
  let x_48 : vec3<f32> = u_xlat1;
  u_xlat45 = dot(x_47, x_48);
  let x_50 : f32 = u_xlat45;
  u_xlat45 = inverseSqrt(x_50);
  let x_53 : f32 = u_xlat45;
  let x_55 : vec3<f32> = u_xlat1;
  let x_56 : vec3<f32> = (vec3<f32>(x_53, x_53, x_53) * x_55);
  let x_57 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_56.x, x_56.y, x_56.z, x_57.w);
  let x_73 : vec2<f32> = vs_TEXCOORD0;
  let x_74 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_73);
  u_xlat3 = vec3<f32>(x_74.x, x_74.y, x_74.z);
  let x_82 : vec2<f32> = vs_TEXCOORD0;
  let x_83 : vec4<f32> = textureSample(x_Occlusion, sampler_Occlusion, x_82);
  u_xlat46 = x_83.x;
  let x_91 : vec2<f32> = vs_TEXCOORD0;
  let x_92 : vec4<f32> = textureSample(x_Metallic, sampler_Metallic, x_91);
  u_xlat4 = x_92;
  let x_99 : vec2<f32> = vs_TEXCOORD0;
  let x_100 : vec4<f32> = textureSample(x_NormalMap, sampler_NormalMap, x_99);
  u_xlat5 = vec3<f32>(x_100.x, x_100.y, x_100.w);
  let x_103 : f32 = u_xlat5.z;
  let x_105 : f32 = u_xlat5.x;
  u_xlat5.x = (x_103 * x_105);
  let x_108 : vec3<f32> = u_xlat5;
  let x_115 : vec2<f32> = ((vec2<f32>(x_108.x, x_108.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_116 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_115.x, x_115.y, x_116.z);
  let x_119 : vec3<f32> = u_xlat5;
  let x_121 : vec3<f32> = u_xlat5;
  u_xlat47 = dot(vec2<f32>(x_119.x, x_119.y), vec2<f32>(x_121.x, x_121.y));
  let x_124 : f32 = u_xlat47;
  u_xlat47 = min(x_124, 1.0f);
  let x_127 : f32 = u_xlat47;
  u_xlat47 = (-(x_127) + 1.0f);
  let x_130 : f32 = u_xlat47;
  u_xlat5.z = sqrt(x_130);
  let x_136 : f32 = x_39.x_Time.y;
  u_xlat47 = fract(x_136);
  let x_138 : f32 = u_xlat47;
  u_xlat47 = (x_138 + -0.039999999f);
  let x_141 : f32 = u_xlat47;
  let x_144 : f32 = vs_TEXCOORD0.y;
  u_xlat47 = (-(x_141) + x_144);
  let x_146 : f32 = u_xlat47;
  u_xlat47 = (x_146 * 12.5f);
  let x_149 : f32 = u_xlat47;
  u_xlat47 = clamp(x_149, 0.0f, 1.0f);
  let x_153 : f32 = u_xlat47;
  u_xlat48 = ((x_153 * -2.0f) + 3.0f);
  let x_158 : f32 = u_xlat47;
  let x_159 : f32 = u_xlat47;
  u_xlat47 = (x_158 * x_159);
  let x_161 : f32 = u_xlat47;
  let x_162 : f32 = u_xlat48;
  u_xlat47 = (x_161 * x_162);
  let x_164 : f32 = u_xlat47;
  u_xlat47 = (x_164 * 3.140000105f);
  let x_167 : f32 = u_xlat47;
  u_xlat47 = sin(x_167);
  let x_169 : f32 = u_xlat47;
  u_xlat47 = max(x_169, 0.0f);
  let x_172 : f32 = x_39.x_Time.y;
  u_xlat48 = (x_172 * 0.200000003f);
  let x_175 : f32 = u_xlat48;
  u_xlat48 = fract(x_175);
  let x_177 : f32 = u_xlat48;
  u_xlat48 = (x_177 * 3.140000105f);
  let x_179 : f32 = u_xlat48;
  u_xlat48 = sin(x_179);
  let x_182 : vec4<f32> = u_xlat4;
  let x_186 : vec3<f32> = (-(vec3<f32>(x_182.y, x_182.z, x_182.w)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_187 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_186.x, x_186.y, x_186.z, x_187.w);
  let x_190 : vec4<f32> = u_xlat6;
  let x_195 : vec4<f32> = x_39.x_BrainColor;
  let x_197 : vec3<f32> = (vec3<f32>(x_190.x, x_190.x, x_190.x) * vec3<f32>(x_195.x, x_195.y, x_195.z));
  let x_198 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_197.x, x_197.y, x_197.z, x_198.w);
  let x_200 : vec4<f32> = u_xlat6;
  let x_204 : vec4<f32> = x_39.x_VeinColor;
  let x_206 : vec3<f32> = (vec3<f32>(x_200.y, x_200.y, x_200.y) * vec3<f32>(x_204.x, x_204.y, x_204.z));
  let x_207 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_206.x, x_206.y, x_207.z, x_206.z);
  let x_209 : f32 = u_xlat47;
  let x_211 : vec4<f32> = u_xlat6;
  let x_213 : vec3<f32> = (vec3<f32>(x_209, x_209, x_209) * vec3<f32>(x_211.x, x_211.y, x_211.w));
  let x_214 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_213.x, x_213.y, x_214.z, x_213.z);
  let x_216 : vec4<f32> = u_xlat7;
  let x_218 : f32 = u_xlat48;
  let x_221 : vec4<f32> = u_xlat6;
  let x_223 : vec3<f32> = ((vec3<f32>(x_216.x, x_216.y, x_216.z) * vec3<f32>(x_218, x_218, x_218)) + vec3<f32>(x_221.x, x_221.y, x_221.w));
  let x_224 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_223.x, x_223.y, x_224.z, x_223.z);
  let x_231 : f32 = x_39.unity_ProbeVolumeParams.x;
  u_xlatb47 = (x_231 == 1.0f);
  let x_233 : bool = u_xlatb47;
  if (x_233) {
    let x_237 : f32 = x_39.unity_ProbeVolumeParams.y;
    u_xlatb47 = (x_237 == 1.0f);
    let x_239 : vec4<f32> = vs_TEXCOORD2;
    let x_243 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[1i];
    let x_245 : vec3<f32> = (vec3<f32>(x_239.w, x_239.w, x_239.w) * vec3<f32>(x_243.x, x_243.y, x_243.z));
    let x_246 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_245.x, x_245.y, x_245.z, x_246.w);
    let x_249 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[0i];
    let x_251 : vec4<f32> = vs_TEXCOORD1;
    let x_254 : vec4<f32> = u_xlat7;
    let x_256 : vec3<f32> = ((vec3<f32>(x_249.x, x_249.y, x_249.z) * vec3<f32>(x_251.w, x_251.w, x_251.w)) + vec3<f32>(x_254.x, x_254.y, x_254.z));
    let x_257 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_256.x, x_256.y, x_256.z, x_257.w);
    let x_261 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[2i];
    let x_263 : vec4<f32> = vs_TEXCOORD3;
    let x_266 : vec4<f32> = u_xlat7;
    let x_268 : vec3<f32> = ((vec3<f32>(x_261.x, x_261.y, x_261.z) * vec3<f32>(x_263.w, x_263.w, x_263.w)) + vec3<f32>(x_266.x, x_266.y, x_266.z));
    let x_269 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_268.x, x_268.y, x_268.z, x_269.w);
    let x_271 : vec4<f32> = u_xlat7;
    let x_275 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[3i];
    let x_277 : vec3<f32> = (vec3<f32>(x_271.x, x_271.y, x_271.z) + vec3<f32>(x_275.x, x_275.y, x_275.z));
    let x_278 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
    let x_280 : bool = u_xlatb47;
    if (x_280) {
      let x_284 : vec4<f32> = u_xlat7;
      x_281 = vec3<f32>(x_284.x, x_284.y, x_284.z);
    } else {
      let x_287 : vec4<f32> = u_xlat0;
      x_281 = vec3<f32>(x_287.x, x_287.y, x_287.z);
    }
    let x_289 : vec3<f32> = x_281;
    let x_290 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_289.x, x_289.y, x_289.z, x_290.w);
    let x_292 : vec4<f32> = u_xlat7;
    let x_296 : vec3<f32> = x_39.unity_ProbeVolumeMin;
    let x_298 : vec3<f32> = (vec3<f32>(x_292.x, x_292.y, x_292.z) + -(x_296));
    let x_299 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_298.x, x_298.y, x_298.z, x_299.w);
    let x_301 : vec4<f32> = u_xlat7;
    let x_305 : vec3<f32> = x_39.unity_ProbeVolumeSizeInv;
    let x_306 : vec3<f32> = (vec3<f32>(x_301.x, x_301.y, x_301.z) * x_305);
    let x_307 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_307.x, x_306.x, x_306.y, x_306.z);
    let x_310 : f32 = u_xlat7.y;
    u_xlat47 = ((x_310 * 0.25f) + 0.75f);
    let x_316 : f32 = x_39.unity_ProbeVolumeParams.z;
    u_xlat48 = ((x_316 * 0.5f) + 0.75f);
    let x_320 : f32 = u_xlat47;
    let x_321 : f32 = u_xlat48;
    u_xlat7.x = max(x_320, x_321);
    let x_332 : vec4<f32> = u_xlat7;
    let x_334 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_332.x, x_332.z, x_332.w));
    u_xlat7 = x_334;
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
    u_xlat7.w = 1.0f;
  }
  let x_340 : vec4<f32> = u_xlat7;
  let x_342 : vec4<f32> = x_39.unity_OcclusionMaskSelector;
  u_xlat47 = dot(x_340, x_342);
  let x_344 : f32 = u_xlat47;
  u_xlat47 = clamp(x_344, 0.0f, 1.0f);
  let x_346 : vec4<f32> = vs_TEXCOORD1;
  let x_348 : vec3<f32> = u_xlat5;
  u_xlat7.x = dot(vec3<f32>(x_346.x, x_346.y, x_346.z), x_348);
  let x_351 : vec4<f32> = vs_TEXCOORD2;
  let x_353 : vec3<f32> = u_xlat5;
  u_xlat7.y = dot(vec3<f32>(x_351.x, x_351.y, x_351.z), x_353);
  let x_356 : vec4<f32> = vs_TEXCOORD3;
  let x_358 : vec3<f32> = u_xlat5;
  u_xlat7.z = dot(vec3<f32>(x_356.x, x_356.y, x_356.z), x_358);
  let x_361 : vec4<f32> = u_xlat7;
  let x_363 : vec4<f32> = u_xlat7;
  u_xlat48 = dot(vec3<f32>(x_361.x, x_361.y, x_361.z), vec3<f32>(x_363.x, x_363.y, x_363.z));
  let x_366 : f32 = u_xlat48;
  u_xlat48 = inverseSqrt(x_366);
  let x_368 : f32 = u_xlat48;
  let x_370 : vec4<f32> = u_xlat7;
  u_xlat5 = (vec3<f32>(x_368, x_368, x_368) * vec3<f32>(x_370.x, x_370.y, x_370.z));
  let x_373 : vec4<f32> = u_xlat2;
  let x_376 : vec3<f32> = u_xlat5;
  u_xlat48 = dot(-(vec3<f32>(x_373.x, x_373.y, x_373.z)), x_376);
  let x_378 : f32 = u_xlat48;
  let x_379 : f32 = u_xlat48;
  u_xlat48 = (x_378 + x_379);
  let x_381 : vec3<f32> = u_xlat5;
  let x_382 : f32 = u_xlat48;
  let x_386 : vec4<f32> = u_xlat2;
  let x_389 : vec3<f32> = ((x_381 * -(vec3<f32>(x_382, x_382, x_382))) + -(vec3<f32>(x_386.x, x_386.y, x_386.z)));
  let x_390 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_389.x, x_389.y, x_389.z, x_390.w);
  let x_393 : f32 = u_xlat47;
  let x_397 : vec4<f32> = x_39.x_LightColor0;
  u_xlat8 = (vec3<f32>(x_393, x_393, x_393) * vec3<f32>(x_397.x, x_397.y, x_397.z));
  let x_402 : f32 = x_39.unity_SpecCube0_ProbePosition.w;
  u_xlatb47 = (0.0f < x_402);
  let x_404 : bool = u_xlatb47;
  if (x_404) {
    let x_407 : vec4<f32> = u_xlat7;
    let x_409 : vec4<f32> = u_xlat7;
    u_xlat47 = dot(vec3<f32>(x_407.x, x_407.y, x_407.z), vec3<f32>(x_409.x, x_409.y, x_409.z));
    let x_412 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_412);
    let x_415 : f32 = u_xlat47;
    let x_417 : vec4<f32> = u_xlat7;
    let x_419 : vec3<f32> = (vec3<f32>(x_415, x_415, x_415) * vec3<f32>(x_417.x, x_417.y, x_417.z));
    let x_420 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_419.x, x_419.y, x_419.z, x_420.w);
    let x_423 : vec4<f32> = u_xlat0;
    let x_428 : vec4<f32> = x_39.unity_SpecCube0_BoxMax;
    u_xlat10 = (-(vec3<f32>(x_423.x, x_423.y, x_423.z)) + vec3<f32>(x_428.x, x_428.y, x_428.z));
    let x_431 : vec3<f32> = u_xlat10;
    let x_432 : vec4<f32> = u_xlat9;
    u_xlat10 = (x_431 / vec3<f32>(x_432.x, x_432.y, x_432.z));
    let x_436 : vec4<f32> = u_xlat0;
    let x_441 : vec4<f32> = x_39.unity_SpecCube0_BoxMin;
    u_xlat11 = (-(vec3<f32>(x_436.x, x_436.y, x_436.z)) + vec3<f32>(x_441.x, x_441.y, x_441.z));
    let x_444 : vec3<f32> = u_xlat11;
    let x_445 : vec4<f32> = u_xlat9;
    u_xlat11 = (x_444 / vec3<f32>(x_445.x, x_445.y, x_445.z));
    let x_452 : vec4<f32> = u_xlat9;
    let x_455 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_452.x, x_452.y, x_452.z, x_452.x));
    u_xlatb12 = vec3<bool>(x_455.x, x_455.y, x_455.z);
    let x_458 : vec3<f32> = u_xlat10;
    hlslcc_movcTemp = x_458;
    let x_460 : bool = u_xlatb12.x;
    if (x_460) {
      let x_465 : f32 = u_xlat10.x;
      x_461 = x_465;
    } else {
      let x_468 : f32 = u_xlat11.x;
      x_461 = x_468;
    }
    let x_469 : f32 = x_461;
    hlslcc_movcTemp.x = x_469;
    let x_472 : bool = u_xlatb12.y;
    if (x_472) {
      let x_477 : f32 = u_xlat10.y;
      x_473 = x_477;
    } else {
      let x_480 : f32 = u_xlat11.y;
      x_473 = x_480;
    }
    let x_481 : f32 = x_473;
    hlslcc_movcTemp.y = x_481;
    let x_484 : bool = u_xlatb12.z;
    if (x_484) {
      let x_489 : f32 = u_xlat10.z;
      x_485 = x_489;
    } else {
      let x_492 : f32 = u_xlat11.z;
      x_485 = x_492;
    }
    let x_493 : f32 = x_485;
    hlslcc_movcTemp.z = x_493;
    let x_495 : vec3<f32> = hlslcc_movcTemp;
    u_xlat10 = x_495;
    let x_497 : f32 = u_xlat10.y;
    let x_499 : f32 = u_xlat10.x;
    u_xlat47 = min(x_497, x_499);
    let x_502 : f32 = u_xlat10.z;
    let x_503 : f32 = u_xlat47;
    u_xlat47 = min(x_502, x_503);
    let x_505 : vec4<f32> = u_xlat0;
    let x_508 : vec4<f32> = x_39.unity_SpecCube0_ProbePosition;
    u_xlat10 = (vec3<f32>(x_505.x, x_505.y, x_505.z) + -(vec3<f32>(x_508.x, x_508.y, x_508.z)));
    let x_512 : vec4<f32> = u_xlat9;
    let x_514 : f32 = u_xlat47;
    let x_517 : vec3<f32> = u_xlat10;
    let x_518 : vec3<f32> = ((vec3<f32>(x_512.x, x_512.y, x_512.z) * vec3<f32>(x_514, x_514, x_514)) + x_517);
    let x_519 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_518.x, x_518.y, x_518.z, x_519.w);
  } else {
    let x_522 : vec4<f32> = u_xlat7;
    let x_523 : vec3<f32> = vec3<f32>(x_522.x, x_522.y, x_522.z);
    let x_524 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_523.x, x_523.y, x_523.z, x_524.w);
  }
  let x_527 : f32 = u_xlat6.z;
  u_xlat47 = ((-(x_527) * 0.699999988f) + 1.700000048f);
  let x_533 : f32 = u_xlat47;
  let x_535 : f32 = u_xlat6.z;
  u_xlat47 = (x_533 * x_535);
  let x_537 : f32 = u_xlat47;
  u_xlat47 = (x_537 * 6.0f);
  let x_548 : vec4<f32> = u_xlat9;
  let x_550 : f32 = u_xlat47;
  let x_551 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_548.x, x_548.y, x_548.z), x_550);
  u_xlat9 = x_551;
  let x_553 : f32 = u_xlat9.w;
  u_xlat48 = (x_553 + -1.0f);
  let x_557 : f32 = x_39.unity_SpecCube0_HDR.w;
  let x_558 : f32 = u_xlat48;
  u_xlat48 = ((x_557 * x_558) + 1.0f);
  let x_561 : f32 = u_xlat48;
  u_xlat48 = log2(x_561);
  let x_563 : f32 = u_xlat48;
  let x_565 : f32 = x_39.unity_SpecCube0_HDR.y;
  u_xlat48 = (x_563 * x_565);
  let x_567 : f32 = u_xlat48;
  u_xlat48 = exp2(x_567);
  let x_569 : f32 = u_xlat48;
  let x_571 : f32 = x_39.unity_SpecCube0_HDR.x;
  u_xlat48 = (x_569 * x_571);
  let x_573 : vec4<f32> = u_xlat9;
  let x_575 : f32 = u_xlat48;
  u_xlat10 = (vec3<f32>(x_573.x, x_573.y, x_573.z) * vec3<f32>(x_575, x_575, x_575));
  let x_580 : f32 = x_39.unity_SpecCube0_BoxMin.w;
  u_xlatb19 = (x_580 < 0.999989986f);
  let x_583 : bool = u_xlatb19;
  if (x_583) {
    let x_588 : f32 = x_39.unity_SpecCube1_ProbePosition.w;
    u_xlatb19 = (0.0f < x_588);
    let x_590 : bool = u_xlatb19;
    if (x_590) {
      let x_594 : vec4<f32> = u_xlat7;
      let x_596 : vec4<f32> = u_xlat7;
      u_xlat19 = dot(vec3<f32>(x_594.x, x_594.y, x_594.z), vec3<f32>(x_596.x, x_596.y, x_596.z));
      let x_599 : f32 = u_xlat19;
      u_xlat19 = inverseSqrt(x_599);
      let x_601 : f32 = u_xlat19;
      let x_603 : vec4<f32> = u_xlat7;
      u_xlat11 = (vec3<f32>(x_601, x_601, x_601) * vec3<f32>(x_603.x, x_603.y, x_603.z));
      let x_607 : vec4<f32> = u_xlat0;
      let x_612 : vec4<f32> = x_39.unity_SpecCube1_BoxMax;
      u_xlat12 = (-(vec3<f32>(x_607.x, x_607.y, x_607.z)) + vec3<f32>(x_612.x, x_612.y, x_612.z));
      let x_615 : vec3<f32> = u_xlat12;
      let x_616 : vec3<f32> = u_xlat11;
      u_xlat12 = (x_615 / x_616);
      let x_619 : vec4<f32> = u_xlat0;
      let x_624 : vec4<f32> = x_39.unity_SpecCube1_BoxMin;
      u_xlat13 = (-(vec3<f32>(x_619.x, x_619.y, x_619.z)) + vec3<f32>(x_624.x, x_624.y, x_624.z));
      let x_627 : vec3<f32> = u_xlat13;
      let x_628 : vec3<f32> = u_xlat11;
      u_xlat13 = (x_627 / x_628);
      let x_631 : vec3<f32> = u_xlat11;
      let x_633 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_631.x, x_631.y, x_631.z, x_631.x));
      u_xlatb14 = vec3<bool>(x_633.x, x_633.y, x_633.z);
      let x_636 : vec3<f32> = u_xlat12;
      hlslcc_movcTemp_1 = x_636;
      let x_638 : bool = u_xlatb14.x;
      if (x_638) {
        let x_643 : f32 = u_xlat12.x;
        x_639 = x_643;
      } else {
        let x_646 : f32 = u_xlat13.x;
        x_639 = x_646;
      }
      let x_647 : f32 = x_639;
      hlslcc_movcTemp_1.x = x_647;
      let x_650 : bool = u_xlatb14.y;
      if (x_650) {
        let x_655 : f32 = u_xlat12.y;
        x_651 = x_655;
      } else {
        let x_658 : f32 = u_xlat13.y;
        x_651 = x_658;
      }
      let x_659 : f32 = x_651;
      hlslcc_movcTemp_1.y = x_659;
      let x_662 : bool = u_xlatb14.z;
      if (x_662) {
        let x_667 : f32 = u_xlat12.z;
        x_663 = x_667;
      } else {
        let x_670 : f32 = u_xlat13.z;
        x_663 = x_670;
      }
      let x_671 : f32 = x_663;
      hlslcc_movcTemp_1.z = x_671;
      let x_673 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat12 = x_673;
      let x_675 : f32 = u_xlat12.y;
      let x_677 : f32 = u_xlat12.x;
      u_xlat19 = min(x_675, x_677);
      let x_680 : f32 = u_xlat12.z;
      let x_681 : f32 = u_xlat19;
      u_xlat19 = min(x_680, x_681);
      let x_683 : vec4<f32> = u_xlat0;
      let x_686 : vec4<f32> = x_39.unity_SpecCube1_ProbePosition;
      let x_689 : vec3<f32> = (vec3<f32>(x_683.x, x_683.y, x_683.z) + -(vec3<f32>(x_686.x, x_686.y, x_686.z)));
      let x_690 : vec4<f32> = u_xlat0;
      u_xlat0 = vec4<f32>(x_689.x, x_689.y, x_689.z, x_690.w);
      let x_692 : vec3<f32> = u_xlat11;
      let x_693 : f32 = u_xlat19;
      let x_696 : vec4<f32> = u_xlat0;
      let x_698 : vec3<f32> = ((x_692 * vec3<f32>(x_693, x_693, x_693)) + vec3<f32>(x_696.x, x_696.y, x_696.z));
      let x_699 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_698.x, x_698.y, x_698.z, x_699.w);
    }
    let x_705 : vec4<f32> = u_xlat7;
    let x_707 : f32 = u_xlat47;
    let x_708 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_705.x, x_705.y, x_705.z), x_707);
    u_xlat7 = x_708;
    let x_710 : f32 = u_xlat7.w;
    u_xlat0.x = (x_710 + -1.0f);
    let x_715 : f32 = x_39.unity_SpecCube1_HDR.w;
    let x_717 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_715 * x_717) + 1.0f);
    let x_722 : f32 = u_xlat0.x;
    u_xlat0.x = log2(x_722);
    let x_726 : f32 = u_xlat0.x;
    let x_728 : f32 = x_39.unity_SpecCube1_HDR.y;
    u_xlat0.x = (x_726 * x_728);
    let x_732 : f32 = u_xlat0.x;
    u_xlat0.x = exp2(x_732);
    let x_736 : f32 = u_xlat0.x;
    let x_738 : f32 = x_39.unity_SpecCube1_HDR.x;
    u_xlat0.x = (x_736 * x_738);
    let x_741 : vec4<f32> = u_xlat7;
    let x_743 : vec4<f32> = u_xlat0;
    let x_745 : vec3<f32> = (vec3<f32>(x_741.x, x_741.y, x_741.z) * vec3<f32>(x_743.x, x_743.x, x_743.x));
    let x_746 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_745.x, x_745.y, x_745.z, x_746.w);
    let x_748 : f32 = u_xlat48;
    let x_750 : vec4<f32> = u_xlat9;
    let x_753 : vec4<f32> = u_xlat0;
    let x_756 : vec3<f32> = ((vec3<f32>(x_748, x_748, x_748) * vec3<f32>(x_750.x, x_750.y, x_750.z)) + -(vec3<f32>(x_753.x, x_753.y, x_753.z)));
    let x_757 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_756.x, x_756.y, x_756.z, x_757.w);
    let x_760 : vec4<f32> = x_39.unity_SpecCube0_BoxMin;
    let x_762 : vec4<f32> = u_xlat7;
    let x_765 : vec4<f32> = u_xlat0;
    u_xlat10 = ((vec3<f32>(x_760.w, x_760.w, x_760.w) * vec3<f32>(x_762.x, x_762.y, x_762.z)) + vec3<f32>(x_765.x, x_765.y, x_765.z));
  }
  let x_768 : f32 = u_xlat46;
  let x_770 : vec3<f32> = u_xlat10;
  let x_771 : vec3<f32> = (vec3<f32>(x_768, x_768, x_768) * x_770);
  let x_772 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_771.x, x_771.y, x_771.z, x_772.w);
  let x_774 : vec3<f32> = u_xlat3;
  let x_776 : vec3<f32> = (x_774 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_777 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_776.x, x_776.y, x_776.z, x_777.w);
  let x_779 : vec4<f32> = u_xlat4;
  let x_781 : vec4<f32> = u_xlat7;
  let x_786 : vec3<f32> = ((vec3<f32>(x_779.x, x_779.x, x_779.x) * vec3<f32>(x_781.x, x_781.y, x_781.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_787 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_786.x, x_786.y, x_786.z, x_787.w);
  let x_790 : f32 = u_xlat4.x;
  u_xlat46 = ((-(x_790) * 0.959999979f) + 0.959999979f);
  let x_795 : f32 = u_xlat46;
  let x_797 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_795, x_795, x_795) * x_797);
  let x_799 : vec3<f32> = u_xlat1;
  let x_800 : f32 = u_xlat45;
  let x_804 : vec4<f32> = x_39.x_WorldSpaceLightPos0;
  u_xlat1 = ((x_799 * vec3<f32>(x_800, x_800, x_800)) + vec3<f32>(x_804.x, x_804.y, x_804.z));
  let x_807 : vec3<f32> = u_xlat1;
  let x_808 : vec3<f32> = u_xlat1;
  u_xlat45 = dot(x_807, x_808);
  let x_810 : f32 = u_xlat45;
  u_xlat45 = max(x_810, 0.001f);
  let x_813 : f32 = u_xlat45;
  u_xlat45 = inverseSqrt(x_813);
  let x_815 : f32 = u_xlat45;
  let x_817 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_815, x_815, x_815) * x_817);
  let x_819 : vec3<f32> = u_xlat5;
  let x_820 : vec4<f32> = u_xlat2;
  u_xlat45 = dot(x_819, vec3<f32>(x_820.x, x_820.y, x_820.z));
  let x_823 : vec3<f32> = u_xlat5;
  let x_825 : vec4<f32> = x_39.x_WorldSpaceLightPos0;
  u_xlat2.x = dot(x_823, vec3<f32>(x_825.x, x_825.y, x_825.z));
  let x_830 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_830, 0.0f, 1.0f);
  let x_834 : vec3<f32> = u_xlat5;
  let x_835 : vec3<f32> = u_xlat1;
  u_xlat17 = dot(x_834, x_835);
  let x_837 : f32 = u_xlat17;
  u_xlat17 = clamp(x_837, 0.0f, 1.0f);
  let x_840 : vec4<f32> = x_39.x_WorldSpaceLightPos0;
  let x_842 : vec3<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_840.x, x_840.y, x_840.z), x_842);
  let x_846 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_846, 0.0f, 1.0f);
  let x_851 : f32 = u_xlat1.x;
  let x_853 : f32 = u_xlat1.x;
  u_xlat16 = (x_851 * x_853);
  let x_855 : f32 = u_xlat16;
  let x_857 : vec4<f32> = u_xlat6;
  u_xlat16 = dot(vec2<f32>(x_855, x_855), vec2<f32>(x_857.z, x_857.z));
  let x_860 : f32 = u_xlat16;
  u_xlat16 = (x_860 + -0.5f);
  let x_865 : f32 = u_xlat2.x;
  u_xlat31 = (-(x_865) + 1.0f);
  let x_869 : f32 = u_xlat31;
  let x_870 : f32 = u_xlat31;
  u_xlat32 = (x_869 * x_870);
  let x_872 : f32 = u_xlat32;
  let x_873 : f32 = u_xlat32;
  u_xlat32 = (x_872 * x_873);
  let x_875 : f32 = u_xlat31;
  let x_876 : f32 = u_xlat32;
  u_xlat31 = (x_875 * x_876);
  let x_878 : f32 = u_xlat16;
  let x_879 : f32 = u_xlat31;
  u_xlat31 = ((x_878 * x_879) + 1.0f);
  let x_882 : f32 = u_xlat45;
  u_xlat32 = (-(abs(x_882)) + 1.0f);
  let x_886 : f32 = u_xlat32;
  let x_887 : f32 = u_xlat32;
  u_xlat47 = (x_886 * x_887);
  let x_889 : f32 = u_xlat47;
  let x_890 : f32 = u_xlat47;
  u_xlat47 = (x_889 * x_890);
  let x_892 : f32 = u_xlat32;
  let x_893 : f32 = u_xlat47;
  u_xlat32 = (x_892 * x_893);
  let x_895 : f32 = u_xlat16;
  let x_896 : f32 = u_xlat32;
  u_xlat16 = ((x_895 * x_896) + 1.0f);
  let x_899 : f32 = u_xlat16;
  let x_900 : f32 = u_xlat31;
  u_xlat16 = (x_899 * x_900);
  let x_903 : f32 = u_xlat2.x;
  let x_904 : f32 = u_xlat16;
  u_xlat16 = (x_903 * x_904);
  let x_907 : f32 = u_xlat6.z;
  let x_909 : f32 = u_xlat6.z;
  u_xlat31 = (x_907 * x_909);
  let x_911 : f32 = u_xlat31;
  u_xlat31 = max(x_911, 0.002f);
  let x_914 : f32 = u_xlat31;
  u_xlat47 = (-(x_914) + 1.0f);
  let x_917 : f32 = u_xlat45;
  let x_919 : f32 = u_xlat47;
  let x_921 : f32 = u_xlat31;
  u_xlat48 = ((abs(x_917) * x_919) + x_921);
  let x_924 : f32 = u_xlat2.x;
  let x_925 : f32 = u_xlat47;
  let x_927 : f32 = u_xlat31;
  u_xlat47 = ((x_924 * x_925) + x_927);
  let x_929 : f32 = u_xlat45;
  let x_931 : f32 = u_xlat47;
  u_xlat45 = (abs(x_929) * x_931);
  let x_934 : f32 = u_xlat2.x;
  let x_935 : f32 = u_xlat48;
  let x_937 : f32 = u_xlat45;
  u_xlat45 = ((x_934 * x_935) + x_937);
  let x_939 : f32 = u_xlat45;
  u_xlat45 = (x_939 + 0.00001f);
  let x_942 : f32 = u_xlat45;
  u_xlat45 = (0.5f / x_942);
  let x_944 : f32 = u_xlat31;
  let x_945 : f32 = u_xlat31;
  u_xlat47 = (x_944 * x_945);
  let x_947 : f32 = u_xlat17;
  let x_948 : f32 = u_xlat47;
  let x_950 : f32 = u_xlat17;
  u_xlat48 = ((x_947 * x_948) + -(x_950));
  let x_953 : f32 = u_xlat48;
  let x_954 : f32 = u_xlat17;
  u_xlat17 = ((x_953 * x_954) + 1.0f);
  let x_957 : f32 = u_xlat47;
  u_xlat47 = (x_957 * 0.318309873f);
  let x_960 : f32 = u_xlat17;
  let x_961 : f32 = u_xlat17;
  u_xlat17 = ((x_960 * x_961) + 0.0000001f);
  let x_965 : f32 = u_xlat47;
  let x_966 : f32 = u_xlat17;
  u_xlat17 = (x_965 / x_966);
  let x_968 : f32 = u_xlat45;
  let x_969 : f32 = u_xlat17;
  u_xlat45 = (x_968 * x_969);
  let x_972 : f32 = u_xlat2.x;
  let x_973 : f32 = u_xlat45;
  u_xlat45 = (x_972 * x_973);
  let x_975 : f32 = u_xlat45;
  u_xlat45 = (x_975 * 3.141592741f);
  let x_978 : f32 = u_xlat45;
  u_xlat45 = max(x_978, 0.0f);
  let x_980 : f32 = u_xlat31;
  let x_981 : f32 = u_xlat31;
  u_xlat31 = ((x_980 * x_981) + 1.0f);
  let x_984 : f32 = u_xlat31;
  u_xlat1.z = (1.0f / x_984);
  let x_987 : vec4<f32> = u_xlat7;
  let x_989 : vec4<f32> = u_xlat7;
  u_xlat2.x = dot(vec3<f32>(x_987.x, x_987.y, x_987.z), vec3<f32>(x_989.x, x_989.y, x_989.z));
  let x_995 : f32 = u_xlat2.x;
  u_xlatb2 = !((x_995 == 0.0f));
  let x_997 : bool = u_xlatb2;
  u_xlat2.x = select(0.0f, 1.0f, x_997);
  let x_1000 : f32 = u_xlat45;
  let x_1002 : f32 = u_xlat2.x;
  u_xlat45 = (x_1000 * x_1002);
  let x_1004 : f32 = u_xlat46;
  let x_1007 : f32 = u_xlat4.w;
  u_xlat46 = (-(x_1004) + x_1007);
  let x_1009 : f32 = u_xlat46;
  u_xlat46 = (x_1009 + 1.0f);
  let x_1011 : f32 = u_xlat46;
  u_xlat46 = clamp(x_1011, 0.0f, 1.0f);
  let x_1013 : f32 = u_xlat16;
  let x_1015 : vec3<f32> = u_xlat8;
  let x_1016 : vec3<f32> = (vec3<f32>(x_1013, x_1013, x_1013) * x_1015);
  let x_1017 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1016.x, x_1016.y, x_1017.z, x_1016.z);
  let x_1019 : vec3<f32> = u_xlat8;
  let x_1020 : f32 = u_xlat45;
  let x_1022 : vec3<f32> = (x_1019 * vec3<f32>(x_1020, x_1020, x_1020));
  let x_1023 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1022.x, x_1022.y, x_1022.z, x_1023.w);
  let x_1026 : f32 = u_xlat1.x;
  u_xlat0.w = (-(x_1026) + 1.0f);
  let x_1031 : f32 = u_xlat0.w;
  let x_1033 : f32 = u_xlat0.w;
  u_xlat1.x = (x_1031 * x_1033);
  let x_1037 : f32 = u_xlat1.x;
  let x_1039 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1037 * x_1039);
  let x_1042 : vec4<f32> = u_xlat0;
  let x_1043 : vec3<f32> = u_xlat1;
  u_xlat0 = (x_1042 * vec4<f32>(x_1043.z, x_1043.z, x_1043.z, x_1043.x));
  let x_1046 : vec4<f32> = u_xlat7;
  u_xlat5 = (-(vec3<f32>(x_1046.x, x_1046.y, x_1046.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1050 : vec3<f32> = u_xlat5;
  let x_1051 : vec4<f32> = u_xlat0;
  let x_1054 : vec4<f32> = u_xlat7;
  u_xlat5 = ((x_1050 * vec3<f32>(x_1051.w, x_1051.w, x_1051.w)) + vec3<f32>(x_1054.x, x_1054.y, x_1054.z));
  let x_1057 : vec4<f32> = u_xlat4;
  let x_1059 : vec3<f32> = u_xlat5;
  let x_1060 : vec3<f32> = (vec3<f32>(x_1057.x, x_1057.y, x_1057.z) * x_1059);
  let x_1061 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1060.x, x_1060.y, x_1060.z, x_1061.w);
  let x_1063 : vec3<f32> = u_xlat3;
  let x_1064 : vec4<f32> = u_xlat2;
  let x_1067 : vec4<f32> = u_xlat4;
  let x_1069 : vec3<f32> = ((x_1063 * vec3<f32>(x_1064.x, x_1064.y, x_1064.w)) + vec3<f32>(x_1067.x, x_1067.y, x_1067.z));
  let x_1070 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1069.x, x_1069.y, x_1070.z, x_1069.z);
  let x_1072 : vec4<f32> = u_xlat7;
  let x_1075 : f32 = u_xlat46;
  u_xlat1 = (-(vec3<f32>(x_1072.x, x_1072.y, x_1072.z)) + vec3<f32>(x_1075, x_1075, x_1075));
  let x_1078 : f32 = u_xlat32;
  let x_1080 : vec3<f32> = u_xlat1;
  let x_1082 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec3<f32>(x_1078, x_1078, x_1078) * x_1080) + vec3<f32>(x_1082.x, x_1082.y, x_1082.z));
  let x_1085 : vec4<f32> = u_xlat0;
  let x_1087 : vec3<f32> = u_xlat1;
  let x_1089 : vec4<f32> = u_xlat2;
  let x_1091 : vec3<f32> = ((vec3<f32>(x_1085.x, x_1085.y, x_1085.z) * x_1087) + vec3<f32>(x_1089.x, x_1089.y, x_1089.w));
  let x_1092 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1091.x, x_1091.y, x_1091.z, x_1092.w);
  let x_1096 : vec4<f32> = u_xlat6;
  let x_1098 : vec4<f32> = u_xlat0;
  let x_1100 : vec3<f32> = (vec3<f32>(x_1096.x, x_1096.y, x_1096.w) + vec3<f32>(x_1098.x, x_1098.y, x_1098.z));
  let x_1101 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1100.x, x_1100.y, x_1100.z, x_1101.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

