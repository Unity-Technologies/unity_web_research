struct PGlobals {
  x_Time : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_WorldSpaceLightPos0 : vec4<f32>,
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

var<private> vs_TEXCOORD5 : f32;

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
  var x_462 : f32;
  var x_474 : f32;
  var x_486 : f32;
  var u_xlatb19 : bool;
  var u_xlat19 : f32;
  var u_xlat12 : vec3<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb14 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_640 : f32;
  var x_652 : f32;
  var x_664 : f32;
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
  let x_343 : vec4<f32> = x_39.unity_OcclusionMaskSelector;
  u_xlat47 = dot(x_340, x_343);
  let x_345 : f32 = u_xlat47;
  u_xlat47 = clamp(x_345, 0.0f, 1.0f);
  let x_347 : vec4<f32> = vs_TEXCOORD1;
  let x_349 : vec3<f32> = u_xlat5;
  u_xlat7.x = dot(vec3<f32>(x_347.x, x_347.y, x_347.z), x_349);
  let x_352 : vec4<f32> = vs_TEXCOORD2;
  let x_354 : vec3<f32> = u_xlat5;
  u_xlat7.y = dot(vec3<f32>(x_352.x, x_352.y, x_352.z), x_354);
  let x_357 : vec4<f32> = vs_TEXCOORD3;
  let x_359 : vec3<f32> = u_xlat5;
  u_xlat7.z = dot(vec3<f32>(x_357.x, x_357.y, x_357.z), x_359);
  let x_362 : vec4<f32> = u_xlat7;
  let x_364 : vec4<f32> = u_xlat7;
  u_xlat48 = dot(vec3<f32>(x_362.x, x_362.y, x_362.z), vec3<f32>(x_364.x, x_364.y, x_364.z));
  let x_367 : f32 = u_xlat48;
  u_xlat48 = inverseSqrt(x_367);
  let x_369 : f32 = u_xlat48;
  let x_371 : vec4<f32> = u_xlat7;
  u_xlat5 = (vec3<f32>(x_369, x_369, x_369) * vec3<f32>(x_371.x, x_371.y, x_371.z));
  let x_374 : vec4<f32> = u_xlat2;
  let x_377 : vec3<f32> = u_xlat5;
  u_xlat48 = dot(-(vec3<f32>(x_374.x, x_374.y, x_374.z)), x_377);
  let x_379 : f32 = u_xlat48;
  let x_380 : f32 = u_xlat48;
  u_xlat48 = (x_379 + x_380);
  let x_382 : vec3<f32> = u_xlat5;
  let x_383 : f32 = u_xlat48;
  let x_387 : vec4<f32> = u_xlat2;
  let x_390 : vec3<f32> = ((x_382 * -(vec3<f32>(x_383, x_383, x_383))) + -(vec3<f32>(x_387.x, x_387.y, x_387.z)));
  let x_391 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_390.x, x_390.y, x_390.z, x_391.w);
  let x_394 : f32 = u_xlat47;
  let x_398 : vec4<f32> = x_39.x_LightColor0;
  u_xlat8 = (vec3<f32>(x_394, x_394, x_394) * vec3<f32>(x_398.x, x_398.y, x_398.z));
  let x_403 : f32 = x_39.unity_SpecCube0_ProbePosition.w;
  u_xlatb47 = (0.0f < x_403);
  let x_405 : bool = u_xlatb47;
  if (x_405) {
    let x_408 : vec4<f32> = u_xlat7;
    let x_410 : vec4<f32> = u_xlat7;
    u_xlat47 = dot(vec3<f32>(x_408.x, x_408.y, x_408.z), vec3<f32>(x_410.x, x_410.y, x_410.z));
    let x_413 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_413);
    let x_416 : f32 = u_xlat47;
    let x_418 : vec4<f32> = u_xlat7;
    let x_420 : vec3<f32> = (vec3<f32>(x_416, x_416, x_416) * vec3<f32>(x_418.x, x_418.y, x_418.z));
    let x_421 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_420.x, x_420.y, x_420.z, x_421.w);
    let x_424 : vec4<f32> = u_xlat0;
    let x_429 : vec4<f32> = x_39.unity_SpecCube0_BoxMax;
    u_xlat10 = (-(vec3<f32>(x_424.x, x_424.y, x_424.z)) + vec3<f32>(x_429.x, x_429.y, x_429.z));
    let x_432 : vec3<f32> = u_xlat10;
    let x_433 : vec4<f32> = u_xlat9;
    u_xlat10 = (x_432 / vec3<f32>(x_433.x, x_433.y, x_433.z));
    let x_437 : vec4<f32> = u_xlat0;
    let x_442 : vec4<f32> = x_39.unity_SpecCube0_BoxMin;
    u_xlat11 = (-(vec3<f32>(x_437.x, x_437.y, x_437.z)) + vec3<f32>(x_442.x, x_442.y, x_442.z));
    let x_445 : vec3<f32> = u_xlat11;
    let x_446 : vec4<f32> = u_xlat9;
    u_xlat11 = (x_445 / vec3<f32>(x_446.x, x_446.y, x_446.z));
    let x_453 : vec4<f32> = u_xlat9;
    let x_456 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_453.x, x_453.y, x_453.z, x_453.x));
    u_xlatb12 = vec3<bool>(x_456.x, x_456.y, x_456.z);
    let x_459 : vec3<f32> = u_xlat10;
    hlslcc_movcTemp = x_459;
    let x_461 : bool = u_xlatb12.x;
    if (x_461) {
      let x_466 : f32 = u_xlat10.x;
      x_462 = x_466;
    } else {
      let x_469 : f32 = u_xlat11.x;
      x_462 = x_469;
    }
    let x_470 : f32 = x_462;
    hlslcc_movcTemp.x = x_470;
    let x_473 : bool = u_xlatb12.y;
    if (x_473) {
      let x_478 : f32 = u_xlat10.y;
      x_474 = x_478;
    } else {
      let x_481 : f32 = u_xlat11.y;
      x_474 = x_481;
    }
    let x_482 : f32 = x_474;
    hlslcc_movcTemp.y = x_482;
    let x_485 : bool = u_xlatb12.z;
    if (x_485) {
      let x_490 : f32 = u_xlat10.z;
      x_486 = x_490;
    } else {
      let x_493 : f32 = u_xlat11.z;
      x_486 = x_493;
    }
    let x_494 : f32 = x_486;
    hlslcc_movcTemp.z = x_494;
    let x_496 : vec3<f32> = hlslcc_movcTemp;
    u_xlat10 = x_496;
    let x_498 : f32 = u_xlat10.y;
    let x_500 : f32 = u_xlat10.x;
    u_xlat47 = min(x_498, x_500);
    let x_503 : f32 = u_xlat10.z;
    let x_504 : f32 = u_xlat47;
    u_xlat47 = min(x_503, x_504);
    let x_506 : vec4<f32> = u_xlat0;
    let x_509 : vec4<f32> = x_39.unity_SpecCube0_ProbePosition;
    u_xlat10 = (vec3<f32>(x_506.x, x_506.y, x_506.z) + -(vec3<f32>(x_509.x, x_509.y, x_509.z)));
    let x_513 : vec4<f32> = u_xlat9;
    let x_515 : f32 = u_xlat47;
    let x_518 : vec3<f32> = u_xlat10;
    let x_519 : vec3<f32> = ((vec3<f32>(x_513.x, x_513.y, x_513.z) * vec3<f32>(x_515, x_515, x_515)) + x_518);
    let x_520 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_519.x, x_519.y, x_519.z, x_520.w);
  } else {
    let x_523 : vec4<f32> = u_xlat7;
    let x_524 : vec3<f32> = vec3<f32>(x_523.x, x_523.y, x_523.z);
    let x_525 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_524.x, x_524.y, x_524.z, x_525.w);
  }
  let x_528 : f32 = u_xlat6.z;
  u_xlat47 = ((-(x_528) * 0.699999988f) + 1.700000048f);
  let x_534 : f32 = u_xlat47;
  let x_536 : f32 = u_xlat6.z;
  u_xlat47 = (x_534 * x_536);
  let x_538 : f32 = u_xlat47;
  u_xlat47 = (x_538 * 6.0f);
  let x_549 : vec4<f32> = u_xlat9;
  let x_551 : f32 = u_xlat47;
  let x_552 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_549.x, x_549.y, x_549.z), x_551);
  u_xlat9 = x_552;
  let x_554 : f32 = u_xlat9.w;
  u_xlat48 = (x_554 + -1.0f);
  let x_558 : f32 = x_39.unity_SpecCube0_HDR.w;
  let x_559 : f32 = u_xlat48;
  u_xlat48 = ((x_558 * x_559) + 1.0f);
  let x_562 : f32 = u_xlat48;
  u_xlat48 = log2(x_562);
  let x_564 : f32 = u_xlat48;
  let x_566 : f32 = x_39.unity_SpecCube0_HDR.y;
  u_xlat48 = (x_564 * x_566);
  let x_568 : f32 = u_xlat48;
  u_xlat48 = exp2(x_568);
  let x_570 : f32 = u_xlat48;
  let x_572 : f32 = x_39.unity_SpecCube0_HDR.x;
  u_xlat48 = (x_570 * x_572);
  let x_574 : vec4<f32> = u_xlat9;
  let x_576 : f32 = u_xlat48;
  u_xlat10 = (vec3<f32>(x_574.x, x_574.y, x_574.z) * vec3<f32>(x_576, x_576, x_576));
  let x_581 : f32 = x_39.unity_SpecCube0_BoxMin.w;
  u_xlatb19 = (x_581 < 0.999989986f);
  let x_584 : bool = u_xlatb19;
  if (x_584) {
    let x_589 : f32 = x_39.unity_SpecCube1_ProbePosition.w;
    u_xlatb19 = (0.0f < x_589);
    let x_591 : bool = u_xlatb19;
    if (x_591) {
      let x_595 : vec4<f32> = u_xlat7;
      let x_597 : vec4<f32> = u_xlat7;
      u_xlat19 = dot(vec3<f32>(x_595.x, x_595.y, x_595.z), vec3<f32>(x_597.x, x_597.y, x_597.z));
      let x_600 : f32 = u_xlat19;
      u_xlat19 = inverseSqrt(x_600);
      let x_602 : f32 = u_xlat19;
      let x_604 : vec4<f32> = u_xlat7;
      u_xlat11 = (vec3<f32>(x_602, x_602, x_602) * vec3<f32>(x_604.x, x_604.y, x_604.z));
      let x_608 : vec4<f32> = u_xlat0;
      let x_613 : vec4<f32> = x_39.unity_SpecCube1_BoxMax;
      u_xlat12 = (-(vec3<f32>(x_608.x, x_608.y, x_608.z)) + vec3<f32>(x_613.x, x_613.y, x_613.z));
      let x_616 : vec3<f32> = u_xlat12;
      let x_617 : vec3<f32> = u_xlat11;
      u_xlat12 = (x_616 / x_617);
      let x_620 : vec4<f32> = u_xlat0;
      let x_625 : vec4<f32> = x_39.unity_SpecCube1_BoxMin;
      u_xlat13 = (-(vec3<f32>(x_620.x, x_620.y, x_620.z)) + vec3<f32>(x_625.x, x_625.y, x_625.z));
      let x_628 : vec3<f32> = u_xlat13;
      let x_629 : vec3<f32> = u_xlat11;
      u_xlat13 = (x_628 / x_629);
      let x_632 : vec3<f32> = u_xlat11;
      let x_634 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_632.x, x_632.y, x_632.z, x_632.x));
      u_xlatb14 = vec3<bool>(x_634.x, x_634.y, x_634.z);
      let x_637 : vec3<f32> = u_xlat12;
      hlslcc_movcTemp_1 = x_637;
      let x_639 : bool = u_xlatb14.x;
      if (x_639) {
        let x_644 : f32 = u_xlat12.x;
        x_640 = x_644;
      } else {
        let x_647 : f32 = u_xlat13.x;
        x_640 = x_647;
      }
      let x_648 : f32 = x_640;
      hlslcc_movcTemp_1.x = x_648;
      let x_651 : bool = u_xlatb14.y;
      if (x_651) {
        let x_656 : f32 = u_xlat12.y;
        x_652 = x_656;
      } else {
        let x_659 : f32 = u_xlat13.y;
        x_652 = x_659;
      }
      let x_660 : f32 = x_652;
      hlslcc_movcTemp_1.y = x_660;
      let x_663 : bool = u_xlatb14.z;
      if (x_663) {
        let x_668 : f32 = u_xlat12.z;
        x_664 = x_668;
      } else {
        let x_671 : f32 = u_xlat13.z;
        x_664 = x_671;
      }
      let x_672 : f32 = x_664;
      hlslcc_movcTemp_1.z = x_672;
      let x_674 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat12 = x_674;
      let x_676 : f32 = u_xlat12.y;
      let x_678 : f32 = u_xlat12.x;
      u_xlat19 = min(x_676, x_678);
      let x_681 : f32 = u_xlat12.z;
      let x_682 : f32 = u_xlat19;
      u_xlat19 = min(x_681, x_682);
      let x_684 : vec4<f32> = u_xlat0;
      let x_687 : vec4<f32> = x_39.unity_SpecCube1_ProbePosition;
      let x_690 : vec3<f32> = (vec3<f32>(x_684.x, x_684.y, x_684.z) + -(vec3<f32>(x_687.x, x_687.y, x_687.z)));
      let x_691 : vec4<f32> = u_xlat0;
      u_xlat0 = vec4<f32>(x_690.x, x_690.y, x_690.z, x_691.w);
      let x_693 : vec3<f32> = u_xlat11;
      let x_694 : f32 = u_xlat19;
      let x_697 : vec4<f32> = u_xlat0;
      let x_699 : vec3<f32> = ((x_693 * vec3<f32>(x_694, x_694, x_694)) + vec3<f32>(x_697.x, x_697.y, x_697.z));
      let x_700 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_699.x, x_699.y, x_699.z, x_700.w);
    }
    let x_706 : vec4<f32> = u_xlat7;
    let x_708 : f32 = u_xlat47;
    let x_709 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_706.x, x_706.y, x_706.z), x_708);
    u_xlat7 = x_709;
    let x_711 : f32 = u_xlat7.w;
    u_xlat0.x = (x_711 + -1.0f);
    let x_716 : f32 = x_39.unity_SpecCube1_HDR.w;
    let x_718 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_716 * x_718) + 1.0f);
    let x_723 : f32 = u_xlat0.x;
    u_xlat0.x = log2(x_723);
    let x_727 : f32 = u_xlat0.x;
    let x_729 : f32 = x_39.unity_SpecCube1_HDR.y;
    u_xlat0.x = (x_727 * x_729);
    let x_733 : f32 = u_xlat0.x;
    u_xlat0.x = exp2(x_733);
    let x_737 : f32 = u_xlat0.x;
    let x_739 : f32 = x_39.unity_SpecCube1_HDR.x;
    u_xlat0.x = (x_737 * x_739);
    let x_742 : vec4<f32> = u_xlat7;
    let x_744 : vec4<f32> = u_xlat0;
    let x_746 : vec3<f32> = (vec3<f32>(x_742.x, x_742.y, x_742.z) * vec3<f32>(x_744.x, x_744.x, x_744.x));
    let x_747 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_746.x, x_746.y, x_746.z, x_747.w);
    let x_749 : f32 = u_xlat48;
    let x_751 : vec4<f32> = u_xlat9;
    let x_754 : vec4<f32> = u_xlat0;
    let x_757 : vec3<f32> = ((vec3<f32>(x_749, x_749, x_749) * vec3<f32>(x_751.x, x_751.y, x_751.z)) + -(vec3<f32>(x_754.x, x_754.y, x_754.z)));
    let x_758 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_757.x, x_757.y, x_757.z, x_758.w);
    let x_761 : vec4<f32> = x_39.unity_SpecCube0_BoxMin;
    let x_763 : vec4<f32> = u_xlat7;
    let x_766 : vec4<f32> = u_xlat0;
    u_xlat10 = ((vec3<f32>(x_761.w, x_761.w, x_761.w) * vec3<f32>(x_763.x, x_763.y, x_763.z)) + vec3<f32>(x_766.x, x_766.y, x_766.z));
  }
  let x_769 : f32 = u_xlat46;
  let x_771 : vec3<f32> = u_xlat10;
  let x_772 : vec3<f32> = (vec3<f32>(x_769, x_769, x_769) * x_771);
  let x_773 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_772.x, x_772.y, x_772.z, x_773.w);
  let x_775 : vec3<f32> = u_xlat3;
  let x_777 : vec3<f32> = (x_775 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_778 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_777.x, x_777.y, x_777.z, x_778.w);
  let x_780 : vec4<f32> = u_xlat4;
  let x_782 : vec4<f32> = u_xlat7;
  let x_787 : vec3<f32> = ((vec3<f32>(x_780.x, x_780.x, x_780.x) * vec3<f32>(x_782.x, x_782.y, x_782.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_788 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_787.x, x_787.y, x_787.z, x_788.w);
  let x_791 : f32 = u_xlat4.x;
  u_xlat46 = ((-(x_791) * 0.959999979f) + 0.959999979f);
  let x_796 : f32 = u_xlat46;
  let x_798 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_796, x_796, x_796) * x_798);
  let x_800 : vec3<f32> = u_xlat1;
  let x_801 : f32 = u_xlat45;
  let x_805 : vec4<f32> = x_39.x_WorldSpaceLightPos0;
  u_xlat1 = ((x_800 * vec3<f32>(x_801, x_801, x_801)) + vec3<f32>(x_805.x, x_805.y, x_805.z));
  let x_808 : vec3<f32> = u_xlat1;
  let x_809 : vec3<f32> = u_xlat1;
  u_xlat45 = dot(x_808, x_809);
  let x_811 : f32 = u_xlat45;
  u_xlat45 = max(x_811, 0.001f);
  let x_814 : f32 = u_xlat45;
  u_xlat45 = inverseSqrt(x_814);
  let x_816 : f32 = u_xlat45;
  let x_818 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_816, x_816, x_816) * x_818);
  let x_820 : vec3<f32> = u_xlat5;
  let x_821 : vec4<f32> = u_xlat2;
  u_xlat45 = dot(x_820, vec3<f32>(x_821.x, x_821.y, x_821.z));
  let x_824 : vec3<f32> = u_xlat5;
  let x_826 : vec4<f32> = x_39.x_WorldSpaceLightPos0;
  u_xlat2.x = dot(x_824, vec3<f32>(x_826.x, x_826.y, x_826.z));
  let x_831 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_831, 0.0f, 1.0f);
  let x_835 : vec3<f32> = u_xlat5;
  let x_836 : vec3<f32> = u_xlat1;
  u_xlat17 = dot(x_835, x_836);
  let x_838 : f32 = u_xlat17;
  u_xlat17 = clamp(x_838, 0.0f, 1.0f);
  let x_841 : vec4<f32> = x_39.x_WorldSpaceLightPos0;
  let x_843 : vec3<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_841.x, x_841.y, x_841.z), x_843);
  let x_847 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_847, 0.0f, 1.0f);
  let x_852 : f32 = u_xlat1.x;
  let x_854 : f32 = u_xlat1.x;
  u_xlat16 = (x_852 * x_854);
  let x_856 : f32 = u_xlat16;
  let x_858 : vec4<f32> = u_xlat6;
  u_xlat16 = dot(vec2<f32>(x_856, x_856), vec2<f32>(x_858.z, x_858.z));
  let x_861 : f32 = u_xlat16;
  u_xlat16 = (x_861 + -0.5f);
  let x_866 : f32 = u_xlat2.x;
  u_xlat31 = (-(x_866) + 1.0f);
  let x_870 : f32 = u_xlat31;
  let x_871 : f32 = u_xlat31;
  u_xlat32 = (x_870 * x_871);
  let x_873 : f32 = u_xlat32;
  let x_874 : f32 = u_xlat32;
  u_xlat32 = (x_873 * x_874);
  let x_876 : f32 = u_xlat31;
  let x_877 : f32 = u_xlat32;
  u_xlat31 = (x_876 * x_877);
  let x_879 : f32 = u_xlat16;
  let x_880 : f32 = u_xlat31;
  u_xlat31 = ((x_879 * x_880) + 1.0f);
  let x_883 : f32 = u_xlat45;
  u_xlat32 = (-(abs(x_883)) + 1.0f);
  let x_887 : f32 = u_xlat32;
  let x_888 : f32 = u_xlat32;
  u_xlat47 = (x_887 * x_888);
  let x_890 : f32 = u_xlat47;
  let x_891 : f32 = u_xlat47;
  u_xlat47 = (x_890 * x_891);
  let x_893 : f32 = u_xlat32;
  let x_894 : f32 = u_xlat47;
  u_xlat32 = (x_893 * x_894);
  let x_896 : f32 = u_xlat16;
  let x_897 : f32 = u_xlat32;
  u_xlat16 = ((x_896 * x_897) + 1.0f);
  let x_900 : f32 = u_xlat16;
  let x_901 : f32 = u_xlat31;
  u_xlat16 = (x_900 * x_901);
  let x_904 : f32 = u_xlat2.x;
  let x_905 : f32 = u_xlat16;
  u_xlat16 = (x_904 * x_905);
  let x_908 : f32 = u_xlat6.z;
  let x_910 : f32 = u_xlat6.z;
  u_xlat31 = (x_908 * x_910);
  let x_912 : f32 = u_xlat31;
  u_xlat31 = max(x_912, 0.002f);
  let x_915 : f32 = u_xlat31;
  u_xlat47 = (-(x_915) + 1.0f);
  let x_918 : f32 = u_xlat45;
  let x_920 : f32 = u_xlat47;
  let x_922 : f32 = u_xlat31;
  u_xlat48 = ((abs(x_918) * x_920) + x_922);
  let x_925 : f32 = u_xlat2.x;
  let x_926 : f32 = u_xlat47;
  let x_928 : f32 = u_xlat31;
  u_xlat47 = ((x_925 * x_926) + x_928);
  let x_930 : f32 = u_xlat45;
  let x_932 : f32 = u_xlat47;
  u_xlat45 = (abs(x_930) * x_932);
  let x_935 : f32 = u_xlat2.x;
  let x_936 : f32 = u_xlat48;
  let x_938 : f32 = u_xlat45;
  u_xlat45 = ((x_935 * x_936) + x_938);
  let x_940 : f32 = u_xlat45;
  u_xlat45 = (x_940 + 0.00001f);
  let x_943 : f32 = u_xlat45;
  u_xlat45 = (0.5f / x_943);
  let x_945 : f32 = u_xlat31;
  let x_946 : f32 = u_xlat31;
  u_xlat47 = (x_945 * x_946);
  let x_948 : f32 = u_xlat17;
  let x_949 : f32 = u_xlat47;
  let x_951 : f32 = u_xlat17;
  u_xlat48 = ((x_948 * x_949) + -(x_951));
  let x_954 : f32 = u_xlat48;
  let x_955 : f32 = u_xlat17;
  u_xlat17 = ((x_954 * x_955) + 1.0f);
  let x_958 : f32 = u_xlat47;
  u_xlat47 = (x_958 * 0.318309873f);
  let x_961 : f32 = u_xlat17;
  let x_962 : f32 = u_xlat17;
  u_xlat17 = ((x_961 * x_962) + 0.0000001f);
  let x_966 : f32 = u_xlat47;
  let x_967 : f32 = u_xlat17;
  u_xlat17 = (x_966 / x_967);
  let x_969 : f32 = u_xlat45;
  let x_970 : f32 = u_xlat17;
  u_xlat45 = (x_969 * x_970);
  let x_973 : f32 = u_xlat2.x;
  let x_974 : f32 = u_xlat45;
  u_xlat45 = (x_973 * x_974);
  let x_976 : f32 = u_xlat45;
  u_xlat45 = (x_976 * 3.141592741f);
  let x_979 : f32 = u_xlat45;
  u_xlat45 = max(x_979, 0.0f);
  let x_981 : f32 = u_xlat31;
  let x_982 : f32 = u_xlat31;
  u_xlat31 = ((x_981 * x_982) + 1.0f);
  let x_985 : f32 = u_xlat31;
  u_xlat1.z = (1.0f / x_985);
  let x_988 : vec4<f32> = u_xlat7;
  let x_990 : vec4<f32> = u_xlat7;
  u_xlat2.x = dot(vec3<f32>(x_988.x, x_988.y, x_988.z), vec3<f32>(x_990.x, x_990.y, x_990.z));
  let x_996 : f32 = u_xlat2.x;
  u_xlatb2 = !((x_996 == 0.0f));
  let x_998 : bool = u_xlatb2;
  u_xlat2.x = select(0.0f, 1.0f, x_998);
  let x_1001 : f32 = u_xlat45;
  let x_1003 : f32 = u_xlat2.x;
  u_xlat45 = (x_1001 * x_1003);
  let x_1005 : f32 = u_xlat46;
  let x_1008 : f32 = u_xlat4.w;
  u_xlat46 = (-(x_1005) + x_1008);
  let x_1010 : f32 = u_xlat46;
  u_xlat46 = (x_1010 + 1.0f);
  let x_1012 : f32 = u_xlat46;
  u_xlat46 = clamp(x_1012, 0.0f, 1.0f);
  let x_1014 : f32 = u_xlat16;
  let x_1016 : vec3<f32> = u_xlat8;
  let x_1017 : vec3<f32> = (vec3<f32>(x_1014, x_1014, x_1014) * x_1016);
  let x_1018 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1017.x, x_1017.y, x_1018.z, x_1017.z);
  let x_1020 : vec3<f32> = u_xlat8;
  let x_1021 : f32 = u_xlat45;
  let x_1023 : vec3<f32> = (x_1020 * vec3<f32>(x_1021, x_1021, x_1021));
  let x_1024 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1023.x, x_1023.y, x_1023.z, x_1024.w);
  let x_1027 : f32 = u_xlat1.x;
  u_xlat0.w = (-(x_1027) + 1.0f);
  let x_1032 : f32 = u_xlat0.w;
  let x_1034 : f32 = u_xlat0.w;
  u_xlat1.x = (x_1032 * x_1034);
  let x_1038 : f32 = u_xlat1.x;
  let x_1040 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1038 * x_1040);
  let x_1043 : vec4<f32> = u_xlat0;
  let x_1044 : vec3<f32> = u_xlat1;
  u_xlat0 = (x_1043 * vec4<f32>(x_1044.z, x_1044.z, x_1044.z, x_1044.x));
  let x_1047 : vec4<f32> = u_xlat7;
  u_xlat5 = (-(vec3<f32>(x_1047.x, x_1047.y, x_1047.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1051 : vec3<f32> = u_xlat5;
  let x_1052 : vec4<f32> = u_xlat0;
  let x_1055 : vec4<f32> = u_xlat7;
  u_xlat5 = ((x_1051 * vec3<f32>(x_1052.w, x_1052.w, x_1052.w)) + vec3<f32>(x_1055.x, x_1055.y, x_1055.z));
  let x_1058 : vec4<f32> = u_xlat4;
  let x_1060 : vec3<f32> = u_xlat5;
  let x_1061 : vec3<f32> = (vec3<f32>(x_1058.x, x_1058.y, x_1058.z) * x_1060);
  let x_1062 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1061.x, x_1061.y, x_1061.z, x_1062.w);
  let x_1064 : vec3<f32> = u_xlat3;
  let x_1065 : vec4<f32> = u_xlat2;
  let x_1068 : vec4<f32> = u_xlat4;
  let x_1070 : vec3<f32> = ((x_1064 * vec3<f32>(x_1065.x, x_1065.y, x_1065.w)) + vec3<f32>(x_1068.x, x_1068.y, x_1068.z));
  let x_1071 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1070.x, x_1070.y, x_1071.z, x_1070.z);
  let x_1073 : vec4<f32> = u_xlat7;
  let x_1076 : f32 = u_xlat46;
  u_xlat1 = (-(vec3<f32>(x_1073.x, x_1073.y, x_1073.z)) + vec3<f32>(x_1076, x_1076, x_1076));
  let x_1079 : f32 = u_xlat32;
  let x_1081 : vec3<f32> = u_xlat1;
  let x_1083 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec3<f32>(x_1079, x_1079, x_1079) * x_1081) + vec3<f32>(x_1083.x, x_1083.y, x_1083.z));
  let x_1086 : vec4<f32> = u_xlat0;
  let x_1088 : vec3<f32> = u_xlat1;
  let x_1090 : vec4<f32> = u_xlat2;
  let x_1092 : vec3<f32> = ((vec3<f32>(x_1086.x, x_1086.y, x_1086.z) * x_1088) + vec3<f32>(x_1090.x, x_1090.y, x_1090.w));
  let x_1093 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1092.x, x_1092.y, x_1092.z, x_1093.w);
  let x_1095 : vec4<f32> = u_xlat6;
  let x_1097 : vec4<f32> = u_xlat0;
  let x_1099 : vec3<f32> = (vec3<f32>(x_1095.x, x_1095.y, x_1095.w) + vec3<f32>(x_1097.x, x_1097.y, x_1097.z));
  let x_1100 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1099.x, x_1099.y, x_1099.z, x_1100.w);
  let x_1103 : f32 = vs_TEXCOORD5;
  let x_1105 : f32 = x_39.x_ProjectionParams.y;
  u_xlat45 = (x_1103 / x_1105);
  let x_1107 : f32 = u_xlat45;
  u_xlat45 = (-(x_1107) + 1.0f);
  let x_1110 : f32 = u_xlat45;
  let x_1112 : f32 = x_39.x_ProjectionParams.z;
  u_xlat45 = (x_1110 * x_1112);
  let x_1114 : f32 = u_xlat45;
  u_xlat45 = max(x_1114, 0.0f);
  let x_1116 : f32 = u_xlat45;
  let x_1119 : f32 = x_39.unity_FogParams.x;
  u_xlat45 = (x_1116 * x_1119);
  let x_1121 : f32 = u_xlat45;
  let x_1122 : f32 = u_xlat45;
  u_xlat45 = (x_1121 * -(x_1122));
  let x_1125 : f32 = u_xlat45;
  u_xlat45 = exp2(x_1125);
  let x_1127 : vec4<f32> = u_xlat0;
  let x_1131 : vec4<f32> = x_39.unity_FogColor;
  let x_1134 : vec3<f32> = (vec3<f32>(x_1127.x, x_1127.y, x_1127.z) + -(vec3<f32>(x_1131.x, x_1131.y, x_1131.z)));
  let x_1135 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1134.x, x_1134.y, x_1134.z, x_1135.w);
  let x_1139 : f32 = u_xlat45;
  let x_1141 : vec4<f32> = u_xlat0;
  let x_1145 : vec4<f32> = x_39.unity_FogColor;
  let x_1147 : vec3<f32> = ((vec3<f32>(x_1139, x_1139, x_1139) * vec3<f32>(x_1141.x, x_1141.y, x_1141.z)) + vec3<f32>(x_1145.x, x_1145.y, x_1145.z));
  let x_1148 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1147.x, x_1147.y, x_1147.z, x_1148.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(2) vs_TEXCOORD1_param : vec4<f32>, @location(3) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD3_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD5_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

