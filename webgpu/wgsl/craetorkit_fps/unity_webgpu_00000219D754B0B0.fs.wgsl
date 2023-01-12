struct PGlobals {
  x_Time : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
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

@group(1) @binding(0) var<uniform> x_39 : PGlobals;

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

@group(0) @binding(5) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(6) var unity_SpecCube1 : texture_cube<f32>;

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
  var u_xlatb48 : bool;
  var x_332 : vec3<f32>;
  var u_xlat19 : vec2<f32>;
  var u_xlat8 : vec3<f32>;
  var u_xlatb47 : bool;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlat11 : vec3<f32>;
  var u_xlatb12 : vec3<bool>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_543 : f32;
  var x_555 : f32;
  var x_567 : f32;
  var u_xlatb19 : bool;
  var u_xlat12 : vec3<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb14 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_723 : f32;
  var x_735 : f32;
  var x_747 : f32;
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
  let x_228 : f32 = x_39.unity_MatrixV[0i].z;
  u_xlat7.x = x_228;
  let x_231 : f32 = x_39.unity_MatrixV[1i].z;
  u_xlat7.y = x_231;
  let x_235 : f32 = x_39.unity_MatrixV[2i].z;
  u_xlat7.z = x_235;
  let x_237 : vec3<f32> = u_xlat1;
  let x_238 : vec4<f32> = u_xlat7;
  u_xlat47 = dot(x_237, vec3<f32>(x_238.x, x_238.y, x_238.z));
  let x_241 : vec4<f32> = u_xlat0;
  let x_245 : vec4<f32> = x_39.unity_ShadowFadeCenterAndType;
  let x_248 : vec3<f32> = (vec3<f32>(x_241.x, x_241.y, x_241.z) + -(vec3<f32>(x_245.x, x_245.y, x_245.z)));
  let x_249 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_248.x, x_248.y, x_248.z, x_249.w);
  let x_251 : vec4<f32> = u_xlat7;
  let x_253 : vec4<f32> = u_xlat7;
  u_xlat48 = dot(vec3<f32>(x_251.x, x_251.y, x_251.z), vec3<f32>(x_253.x, x_253.y, x_253.z));
  let x_256 : f32 = u_xlat48;
  u_xlat48 = sqrt(x_256);
  let x_258 : f32 = u_xlat47;
  let x_260 : f32 = u_xlat48;
  u_xlat48 = (-(x_258) + x_260);
  let x_263 : f32 = x_39.unity_ShadowFadeCenterAndType.w;
  let x_264 : f32 = u_xlat48;
  let x_266 : f32 = u_xlat47;
  u_xlat47 = ((x_263 * x_264) + x_266);
  let x_268 : f32 = u_xlat47;
  let x_271 : f32 = x_39.x_LightShadowData.z;
  let x_274 : f32 = x_39.x_LightShadowData.w;
  u_xlat47 = ((x_268 * x_271) + x_274);
  let x_276 : f32 = u_xlat47;
  u_xlat47 = clamp(x_276, 0.0f, 1.0f);
  let x_283 : f32 = x_39.unity_ProbeVolumeParams.x;
  u_xlatb48 = (x_283 == 1.0f);
  let x_285 : bool = u_xlatb48;
  if (x_285) {
    let x_289 : f32 = x_39.unity_ProbeVolumeParams.y;
    u_xlatb48 = (x_289 == 1.0f);
    let x_291 : vec4<f32> = vs_TEXCOORD2;
    let x_295 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[1i];
    let x_297 : vec3<f32> = (vec3<f32>(x_291.w, x_291.w, x_291.w) * vec3<f32>(x_295.x, x_295.y, x_295.z));
    let x_298 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_297.x, x_297.y, x_297.z, x_298.w);
    let x_301 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[0i];
    let x_303 : vec4<f32> = vs_TEXCOORD1;
    let x_306 : vec4<f32> = u_xlat7;
    let x_308 : vec3<f32> = ((vec3<f32>(x_301.x, x_301.y, x_301.z) * vec3<f32>(x_303.w, x_303.w, x_303.w)) + vec3<f32>(x_306.x, x_306.y, x_306.z));
    let x_309 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_308.x, x_308.y, x_308.z, x_309.w);
    let x_312 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[2i];
    let x_314 : vec4<f32> = vs_TEXCOORD3;
    let x_317 : vec4<f32> = u_xlat7;
    let x_319 : vec3<f32> = ((vec3<f32>(x_312.x, x_312.y, x_312.z) * vec3<f32>(x_314.w, x_314.w, x_314.w)) + vec3<f32>(x_317.x, x_317.y, x_317.z));
    let x_320 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_319.x, x_319.y, x_319.z, x_320.w);
    let x_322 : vec4<f32> = u_xlat7;
    let x_326 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[3i];
    let x_328 : vec3<f32> = (vec3<f32>(x_322.x, x_322.y, x_322.z) + vec3<f32>(x_326.x, x_326.y, x_326.z));
    let x_329 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_328.x, x_328.y, x_328.z, x_329.w);
    let x_331 : bool = u_xlatb48;
    if (x_331) {
      let x_335 : vec4<f32> = u_xlat7;
      x_332 = vec3<f32>(x_335.x, x_335.y, x_335.z);
    } else {
      let x_338 : vec4<f32> = u_xlat0;
      x_332 = vec3<f32>(x_338.x, x_338.y, x_338.z);
    }
    let x_340 : vec3<f32> = x_332;
    let x_341 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
    let x_343 : vec4<f32> = u_xlat7;
    let x_347 : vec3<f32> = x_39.unity_ProbeVolumeMin;
    let x_349 : vec3<f32> = (vec3<f32>(x_343.x, x_343.y, x_343.z) + -(x_347));
    let x_350 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_349.x, x_349.y, x_349.z, x_350.w);
    let x_352 : vec4<f32> = u_xlat7;
    let x_356 : vec3<f32> = x_39.unity_ProbeVolumeSizeInv;
    let x_357 : vec3<f32> = (vec3<f32>(x_352.x, x_352.y, x_352.z) * x_356);
    let x_358 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_358.x, x_357.x, x_357.y, x_357.z);
    let x_361 : f32 = u_xlat7.y;
    u_xlat48 = ((x_361 * 0.25f) + 0.75f);
    let x_369 : f32 = x_39.unity_ProbeVolumeParams.z;
    u_xlat19.x = ((x_369 * 0.5f) + 0.75f);
    let x_374 : f32 = u_xlat48;
    let x_376 : f32 = u_xlat19.x;
    u_xlat7.x = max(x_374, x_376);
    let x_387 : vec4<f32> = u_xlat7;
    let x_389 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_387.x, x_387.z, x_387.w));
    u_xlat7 = x_389;
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
    u_xlat7.w = 1.0f;
  }
  let x_395 : vec4<f32> = u_xlat7;
  let x_397 : vec4<f32> = x_39.unity_OcclusionMaskSelector;
  u_xlat48 = dot(x_395, x_397);
  let x_399 : f32 = u_xlat48;
  u_xlat48 = clamp(x_399, 0.0f, 1.0f);
  let x_402 : vec4<f32> = vs_TEXCOORD6;
  let x_404 : vec4<f32> = vs_TEXCOORD6;
  u_xlat19 = (vec2<f32>(x_402.x, x_402.y) / vec2<f32>(x_404.w, x_404.w));
  let x_412 : vec2<f32> = u_xlat19;
  let x_413 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, x_412);
  u_xlat19.x = x_413.x;
  let x_416 : f32 = u_xlat48;
  let x_418 : f32 = u_xlat19.x;
  u_xlat48 = (x_416 + -(x_418));
  let x_421 : f32 = u_xlat47;
  let x_422 : f32 = u_xlat48;
  let x_425 : f32 = u_xlat19.x;
  u_xlat47 = ((x_421 * x_422) + x_425);
  let x_427 : vec4<f32> = vs_TEXCOORD1;
  let x_429 : vec3<f32> = u_xlat5;
  u_xlat7.x = dot(vec3<f32>(x_427.x, x_427.y, x_427.z), x_429);
  let x_432 : vec4<f32> = vs_TEXCOORD2;
  let x_434 : vec3<f32> = u_xlat5;
  u_xlat7.y = dot(vec3<f32>(x_432.x, x_432.y, x_432.z), x_434);
  let x_437 : vec4<f32> = vs_TEXCOORD3;
  let x_439 : vec3<f32> = u_xlat5;
  u_xlat7.z = dot(vec3<f32>(x_437.x, x_437.y, x_437.z), x_439);
  let x_442 : vec4<f32> = u_xlat7;
  let x_444 : vec4<f32> = u_xlat7;
  u_xlat48 = dot(vec3<f32>(x_442.x, x_442.y, x_442.z), vec3<f32>(x_444.x, x_444.y, x_444.z));
  let x_447 : f32 = u_xlat48;
  u_xlat48 = inverseSqrt(x_447);
  let x_449 : f32 = u_xlat48;
  let x_451 : vec4<f32> = u_xlat7;
  u_xlat5 = (vec3<f32>(x_449, x_449, x_449) * vec3<f32>(x_451.x, x_451.y, x_451.z));
  let x_454 : vec4<f32> = u_xlat2;
  let x_457 : vec3<f32> = u_xlat5;
  u_xlat48 = dot(-(vec3<f32>(x_454.x, x_454.y, x_454.z)), x_457);
  let x_459 : f32 = u_xlat48;
  let x_460 : f32 = u_xlat48;
  u_xlat48 = (x_459 + x_460);
  let x_462 : vec3<f32> = u_xlat5;
  let x_463 : f32 = u_xlat48;
  let x_467 : vec4<f32> = u_xlat2;
  let x_470 : vec3<f32> = ((x_462 * -(vec3<f32>(x_463, x_463, x_463))) + -(vec3<f32>(x_467.x, x_467.y, x_467.z)));
  let x_471 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_470.x, x_470.y, x_470.z, x_471.w);
  let x_474 : f32 = u_xlat47;
  let x_478 : vec4<f32> = x_39.x_LightColor0;
  u_xlat8 = (vec3<f32>(x_474, x_474, x_474) * vec3<f32>(x_478.x, x_478.y, x_478.z));
  let x_484 : f32 = x_39.unity_SpecCube0_ProbePosition.w;
  u_xlatb47 = (0.0f < x_484);
  let x_486 : bool = u_xlatb47;
  if (x_486) {
    let x_489 : vec4<f32> = u_xlat7;
    let x_491 : vec4<f32> = u_xlat7;
    u_xlat47 = dot(vec3<f32>(x_489.x, x_489.y, x_489.z), vec3<f32>(x_491.x, x_491.y, x_491.z));
    let x_494 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_494);
    let x_497 : f32 = u_xlat47;
    let x_499 : vec4<f32> = u_xlat7;
    let x_501 : vec3<f32> = (vec3<f32>(x_497, x_497, x_497) * vec3<f32>(x_499.x, x_499.y, x_499.z));
    let x_502 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_501.x, x_501.y, x_501.z, x_502.w);
    let x_505 : vec4<f32> = u_xlat0;
    let x_510 : vec4<f32> = x_39.unity_SpecCube0_BoxMax;
    u_xlat10 = (-(vec3<f32>(x_505.x, x_505.y, x_505.z)) + vec3<f32>(x_510.x, x_510.y, x_510.z));
    let x_513 : vec3<f32> = u_xlat10;
    let x_514 : vec4<f32> = u_xlat9;
    u_xlat10 = (x_513 / vec3<f32>(x_514.x, x_514.y, x_514.z));
    let x_518 : vec4<f32> = u_xlat0;
    let x_523 : vec4<f32> = x_39.unity_SpecCube0_BoxMin;
    u_xlat11 = (-(vec3<f32>(x_518.x, x_518.y, x_518.z)) + vec3<f32>(x_523.x, x_523.y, x_523.z));
    let x_526 : vec3<f32> = u_xlat11;
    let x_527 : vec4<f32> = u_xlat9;
    u_xlat11 = (x_526 / vec3<f32>(x_527.x, x_527.y, x_527.z));
    let x_534 : vec4<f32> = u_xlat9;
    let x_537 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_534.x, x_534.y, x_534.z, x_534.x));
    u_xlatb12 = vec3<bool>(x_537.x, x_537.y, x_537.z);
    let x_540 : vec3<f32> = u_xlat10;
    hlslcc_movcTemp = x_540;
    let x_542 : bool = u_xlatb12.x;
    if (x_542) {
      let x_547 : f32 = u_xlat10.x;
      x_543 = x_547;
    } else {
      let x_550 : f32 = u_xlat11.x;
      x_543 = x_550;
    }
    let x_551 : f32 = x_543;
    hlslcc_movcTemp.x = x_551;
    let x_554 : bool = u_xlatb12.y;
    if (x_554) {
      let x_559 : f32 = u_xlat10.y;
      x_555 = x_559;
    } else {
      let x_562 : f32 = u_xlat11.y;
      x_555 = x_562;
    }
    let x_563 : f32 = x_555;
    hlslcc_movcTemp.y = x_563;
    let x_566 : bool = u_xlatb12.z;
    if (x_566) {
      let x_571 : f32 = u_xlat10.z;
      x_567 = x_571;
    } else {
      let x_574 : f32 = u_xlat11.z;
      x_567 = x_574;
    }
    let x_575 : f32 = x_567;
    hlslcc_movcTemp.z = x_575;
    let x_577 : vec3<f32> = hlslcc_movcTemp;
    u_xlat10 = x_577;
    let x_579 : f32 = u_xlat10.y;
    let x_581 : f32 = u_xlat10.x;
    u_xlat47 = min(x_579, x_581);
    let x_584 : f32 = u_xlat10.z;
    let x_585 : f32 = u_xlat47;
    u_xlat47 = min(x_584, x_585);
    let x_587 : vec4<f32> = u_xlat0;
    let x_590 : vec4<f32> = x_39.unity_SpecCube0_ProbePosition;
    u_xlat10 = (vec3<f32>(x_587.x, x_587.y, x_587.z) + -(vec3<f32>(x_590.x, x_590.y, x_590.z)));
    let x_594 : vec4<f32> = u_xlat9;
    let x_596 : f32 = u_xlat47;
    let x_599 : vec3<f32> = u_xlat10;
    let x_600 : vec3<f32> = ((vec3<f32>(x_594.x, x_594.y, x_594.z) * vec3<f32>(x_596, x_596, x_596)) + x_599);
    let x_601 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_600.x, x_600.y, x_600.z, x_601.w);
  } else {
    let x_604 : vec4<f32> = u_xlat7;
    let x_605 : vec3<f32> = vec3<f32>(x_604.x, x_604.y, x_604.z);
    let x_606 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_605.x, x_605.y, x_605.z, x_606.w);
  }
  let x_609 : f32 = u_xlat6.z;
  u_xlat47 = ((-(x_609) * 0.699999988f) + 1.700000048f);
  let x_615 : f32 = u_xlat47;
  let x_617 : f32 = u_xlat6.z;
  u_xlat47 = (x_615 * x_617);
  let x_619 : f32 = u_xlat47;
  u_xlat47 = (x_619 * 6.0f);
  let x_630 : vec4<f32> = u_xlat9;
  let x_632 : f32 = u_xlat47;
  let x_633 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_630.x, x_630.y, x_630.z), x_632);
  u_xlat9 = x_633;
  let x_635 : f32 = u_xlat9.w;
  u_xlat48 = (x_635 + -1.0f);
  let x_639 : f32 = x_39.unity_SpecCube0_HDR.w;
  let x_640 : f32 = u_xlat48;
  u_xlat48 = ((x_639 * x_640) + 1.0f);
  let x_643 : f32 = u_xlat48;
  u_xlat48 = log2(x_643);
  let x_645 : f32 = u_xlat48;
  let x_647 : f32 = x_39.unity_SpecCube0_HDR.y;
  u_xlat48 = (x_645 * x_647);
  let x_649 : f32 = u_xlat48;
  u_xlat48 = exp2(x_649);
  let x_651 : f32 = u_xlat48;
  let x_653 : f32 = x_39.unity_SpecCube0_HDR.x;
  u_xlat48 = (x_651 * x_653);
  let x_655 : vec4<f32> = u_xlat9;
  let x_657 : f32 = u_xlat48;
  u_xlat10 = (vec3<f32>(x_655.x, x_655.y, x_655.z) * vec3<f32>(x_657, x_657, x_657));
  let x_662 : f32 = x_39.unity_SpecCube0_BoxMin.w;
  u_xlatb19 = (x_662 < 0.999989986f);
  let x_665 : bool = u_xlatb19;
  if (x_665) {
    let x_670 : f32 = x_39.unity_SpecCube1_ProbePosition.w;
    u_xlatb19 = (0.0f < x_670);
    let x_672 : bool = u_xlatb19;
    if (x_672) {
      let x_675 : vec4<f32> = u_xlat7;
      let x_677 : vec4<f32> = u_xlat7;
      u_xlat19.x = dot(vec3<f32>(x_675.x, x_675.y, x_675.z), vec3<f32>(x_677.x, x_677.y, x_677.z));
      let x_682 : f32 = u_xlat19.x;
      u_xlat19.x = inverseSqrt(x_682);
      let x_685 : vec2<f32> = u_xlat19;
      let x_687 : vec4<f32> = u_xlat7;
      u_xlat11 = (vec3<f32>(x_685.x, x_685.x, x_685.x) * vec3<f32>(x_687.x, x_687.y, x_687.z));
      let x_691 : vec4<f32> = u_xlat0;
      let x_696 : vec4<f32> = x_39.unity_SpecCube1_BoxMax;
      u_xlat12 = (-(vec3<f32>(x_691.x, x_691.y, x_691.z)) + vec3<f32>(x_696.x, x_696.y, x_696.z));
      let x_699 : vec3<f32> = u_xlat12;
      let x_700 : vec3<f32> = u_xlat11;
      u_xlat12 = (x_699 / x_700);
      let x_703 : vec4<f32> = u_xlat0;
      let x_708 : vec4<f32> = x_39.unity_SpecCube1_BoxMin;
      u_xlat13 = (-(vec3<f32>(x_703.x, x_703.y, x_703.z)) + vec3<f32>(x_708.x, x_708.y, x_708.z));
      let x_711 : vec3<f32> = u_xlat13;
      let x_712 : vec3<f32> = u_xlat11;
      u_xlat13 = (x_711 / x_712);
      let x_715 : vec3<f32> = u_xlat11;
      let x_717 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_715.x, x_715.y, x_715.z, x_715.x));
      u_xlatb14 = vec3<bool>(x_717.x, x_717.y, x_717.z);
      let x_720 : vec3<f32> = u_xlat12;
      hlslcc_movcTemp_1 = x_720;
      let x_722 : bool = u_xlatb14.x;
      if (x_722) {
        let x_727 : f32 = u_xlat12.x;
        x_723 = x_727;
      } else {
        let x_730 : f32 = u_xlat13.x;
        x_723 = x_730;
      }
      let x_731 : f32 = x_723;
      hlslcc_movcTemp_1.x = x_731;
      let x_734 : bool = u_xlatb14.y;
      if (x_734) {
        let x_739 : f32 = u_xlat12.y;
        x_735 = x_739;
      } else {
        let x_742 : f32 = u_xlat13.y;
        x_735 = x_742;
      }
      let x_743 : f32 = x_735;
      hlslcc_movcTemp_1.y = x_743;
      let x_746 : bool = u_xlatb14.z;
      if (x_746) {
        let x_751 : f32 = u_xlat12.z;
        x_747 = x_751;
      } else {
        let x_754 : f32 = u_xlat13.z;
        x_747 = x_754;
      }
      let x_755 : f32 = x_747;
      hlslcc_movcTemp_1.z = x_755;
      let x_757 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat12 = x_757;
      let x_759 : f32 = u_xlat12.y;
      let x_761 : f32 = u_xlat12.x;
      u_xlat19.x = min(x_759, x_761);
      let x_765 : f32 = u_xlat12.z;
      let x_767 : f32 = u_xlat19.x;
      u_xlat19.x = min(x_765, x_767);
      let x_770 : vec4<f32> = u_xlat0;
      let x_773 : vec4<f32> = x_39.unity_SpecCube1_ProbePosition;
      let x_776 : vec3<f32> = (vec3<f32>(x_770.x, x_770.y, x_770.z) + -(vec3<f32>(x_773.x, x_773.y, x_773.z)));
      let x_777 : vec4<f32> = u_xlat0;
      u_xlat0 = vec4<f32>(x_776.x, x_776.y, x_776.z, x_777.w);
      let x_779 : vec3<f32> = u_xlat11;
      let x_780 : vec2<f32> = u_xlat19;
      let x_783 : vec4<f32> = u_xlat0;
      let x_785 : vec3<f32> = ((x_779 * vec3<f32>(x_780.x, x_780.x, x_780.x)) + vec3<f32>(x_783.x, x_783.y, x_783.z));
      let x_786 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_785.x, x_785.y, x_785.z, x_786.w);
    }
    let x_792 : vec4<f32> = u_xlat7;
    let x_794 : f32 = u_xlat47;
    let x_795 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_792.x, x_792.y, x_792.z), x_794);
    u_xlat7 = x_795;
    let x_797 : f32 = u_xlat7.w;
    u_xlat0.x = (x_797 + -1.0f);
    let x_802 : f32 = x_39.unity_SpecCube1_HDR.w;
    let x_804 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_802 * x_804) + 1.0f);
    let x_809 : f32 = u_xlat0.x;
    u_xlat0.x = log2(x_809);
    let x_813 : f32 = u_xlat0.x;
    let x_815 : f32 = x_39.unity_SpecCube1_HDR.y;
    u_xlat0.x = (x_813 * x_815);
    let x_819 : f32 = u_xlat0.x;
    u_xlat0.x = exp2(x_819);
    let x_823 : f32 = u_xlat0.x;
    let x_825 : f32 = x_39.unity_SpecCube1_HDR.x;
    u_xlat0.x = (x_823 * x_825);
    let x_828 : vec4<f32> = u_xlat7;
    let x_830 : vec4<f32> = u_xlat0;
    let x_832 : vec3<f32> = (vec3<f32>(x_828.x, x_828.y, x_828.z) * vec3<f32>(x_830.x, x_830.x, x_830.x));
    let x_833 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_832.x, x_832.y, x_832.z, x_833.w);
    let x_835 : f32 = u_xlat48;
    let x_837 : vec4<f32> = u_xlat9;
    let x_840 : vec4<f32> = u_xlat0;
    let x_843 : vec3<f32> = ((vec3<f32>(x_835, x_835, x_835) * vec3<f32>(x_837.x, x_837.y, x_837.z)) + -(vec3<f32>(x_840.x, x_840.y, x_840.z)));
    let x_844 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_843.x, x_843.y, x_843.z, x_844.w);
    let x_847 : vec4<f32> = x_39.unity_SpecCube0_BoxMin;
    let x_849 : vec4<f32> = u_xlat7;
    let x_852 : vec4<f32> = u_xlat0;
    u_xlat10 = ((vec3<f32>(x_847.w, x_847.w, x_847.w) * vec3<f32>(x_849.x, x_849.y, x_849.z)) + vec3<f32>(x_852.x, x_852.y, x_852.z));
  }
  let x_855 : f32 = u_xlat46;
  let x_857 : vec3<f32> = u_xlat10;
  let x_858 : vec3<f32> = (vec3<f32>(x_855, x_855, x_855) * x_857);
  let x_859 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_858.x, x_858.y, x_858.z, x_859.w);
  let x_861 : vec3<f32> = u_xlat3;
  let x_863 : vec3<f32> = (x_861 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_864 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_863.x, x_863.y, x_863.z, x_864.w);
  let x_866 : vec4<f32> = u_xlat4;
  let x_868 : vec4<f32> = u_xlat7;
  let x_873 : vec3<f32> = ((vec3<f32>(x_866.x, x_866.x, x_866.x) * vec3<f32>(x_868.x, x_868.y, x_868.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_874 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_873.x, x_873.y, x_873.z, x_874.w);
  let x_877 : f32 = u_xlat4.x;
  u_xlat46 = ((-(x_877) * 0.959999979f) + 0.959999979f);
  let x_882 : f32 = u_xlat46;
  let x_884 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_882, x_882, x_882) * x_884);
  let x_886 : vec3<f32> = u_xlat1;
  let x_887 : f32 = u_xlat45;
  let x_891 : vec4<f32> = x_39.x_WorldSpaceLightPos0;
  u_xlat1 = ((x_886 * vec3<f32>(x_887, x_887, x_887)) + vec3<f32>(x_891.x, x_891.y, x_891.z));
  let x_894 : vec3<f32> = u_xlat1;
  let x_895 : vec3<f32> = u_xlat1;
  u_xlat45 = dot(x_894, x_895);
  let x_897 : f32 = u_xlat45;
  u_xlat45 = max(x_897, 0.001f);
  let x_900 : f32 = u_xlat45;
  u_xlat45 = inverseSqrt(x_900);
  let x_902 : f32 = u_xlat45;
  let x_904 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_902, x_902, x_902) * x_904);
  let x_906 : vec3<f32> = u_xlat5;
  let x_907 : vec4<f32> = u_xlat2;
  u_xlat45 = dot(x_906, vec3<f32>(x_907.x, x_907.y, x_907.z));
  let x_910 : vec3<f32> = u_xlat5;
  let x_912 : vec4<f32> = x_39.x_WorldSpaceLightPos0;
  u_xlat2.x = dot(x_910, vec3<f32>(x_912.x, x_912.y, x_912.z));
  let x_917 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_917, 0.0f, 1.0f);
  let x_921 : vec3<f32> = u_xlat5;
  let x_922 : vec3<f32> = u_xlat1;
  u_xlat17 = dot(x_921, x_922);
  let x_924 : f32 = u_xlat17;
  u_xlat17 = clamp(x_924, 0.0f, 1.0f);
  let x_927 : vec4<f32> = x_39.x_WorldSpaceLightPos0;
  let x_929 : vec3<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_927.x, x_927.y, x_927.z), x_929);
  let x_933 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_933, 0.0f, 1.0f);
  let x_938 : f32 = u_xlat1.x;
  let x_940 : f32 = u_xlat1.x;
  u_xlat16 = (x_938 * x_940);
  let x_942 : f32 = u_xlat16;
  let x_944 : vec4<f32> = u_xlat6;
  u_xlat16 = dot(vec2<f32>(x_942, x_942), vec2<f32>(x_944.z, x_944.z));
  let x_947 : f32 = u_xlat16;
  u_xlat16 = (x_947 + -0.5f);
  let x_952 : f32 = u_xlat2.x;
  u_xlat31 = (-(x_952) + 1.0f);
  let x_956 : f32 = u_xlat31;
  let x_957 : f32 = u_xlat31;
  u_xlat32 = (x_956 * x_957);
  let x_959 : f32 = u_xlat32;
  let x_960 : f32 = u_xlat32;
  u_xlat32 = (x_959 * x_960);
  let x_962 : f32 = u_xlat31;
  let x_963 : f32 = u_xlat32;
  u_xlat31 = (x_962 * x_963);
  let x_965 : f32 = u_xlat16;
  let x_966 : f32 = u_xlat31;
  u_xlat31 = ((x_965 * x_966) + 1.0f);
  let x_969 : f32 = u_xlat45;
  u_xlat32 = (-(abs(x_969)) + 1.0f);
  let x_973 : f32 = u_xlat32;
  let x_974 : f32 = u_xlat32;
  u_xlat47 = (x_973 * x_974);
  let x_976 : f32 = u_xlat47;
  let x_977 : f32 = u_xlat47;
  u_xlat47 = (x_976 * x_977);
  let x_979 : f32 = u_xlat32;
  let x_980 : f32 = u_xlat47;
  u_xlat32 = (x_979 * x_980);
  let x_982 : f32 = u_xlat16;
  let x_983 : f32 = u_xlat32;
  u_xlat16 = ((x_982 * x_983) + 1.0f);
  let x_986 : f32 = u_xlat16;
  let x_987 : f32 = u_xlat31;
  u_xlat16 = (x_986 * x_987);
  let x_990 : f32 = u_xlat2.x;
  let x_991 : f32 = u_xlat16;
  u_xlat16 = (x_990 * x_991);
  let x_994 : f32 = u_xlat6.z;
  let x_996 : f32 = u_xlat6.z;
  u_xlat31 = (x_994 * x_996);
  let x_998 : f32 = u_xlat31;
  u_xlat31 = max(x_998, 0.002f);
  let x_1001 : f32 = u_xlat31;
  u_xlat47 = (-(x_1001) + 1.0f);
  let x_1004 : f32 = u_xlat45;
  let x_1006 : f32 = u_xlat47;
  let x_1008 : f32 = u_xlat31;
  u_xlat48 = ((abs(x_1004) * x_1006) + x_1008);
  let x_1011 : f32 = u_xlat2.x;
  let x_1012 : f32 = u_xlat47;
  let x_1014 : f32 = u_xlat31;
  u_xlat47 = ((x_1011 * x_1012) + x_1014);
  let x_1016 : f32 = u_xlat45;
  let x_1018 : f32 = u_xlat47;
  u_xlat45 = (abs(x_1016) * x_1018);
  let x_1021 : f32 = u_xlat2.x;
  let x_1022 : f32 = u_xlat48;
  let x_1024 : f32 = u_xlat45;
  u_xlat45 = ((x_1021 * x_1022) + x_1024);
  let x_1026 : f32 = u_xlat45;
  u_xlat45 = (x_1026 + 0.00001f);
  let x_1029 : f32 = u_xlat45;
  u_xlat45 = (0.5f / x_1029);
  let x_1031 : f32 = u_xlat31;
  let x_1032 : f32 = u_xlat31;
  u_xlat47 = (x_1031 * x_1032);
  let x_1034 : f32 = u_xlat17;
  let x_1035 : f32 = u_xlat47;
  let x_1037 : f32 = u_xlat17;
  u_xlat48 = ((x_1034 * x_1035) + -(x_1037));
  let x_1040 : f32 = u_xlat48;
  let x_1041 : f32 = u_xlat17;
  u_xlat17 = ((x_1040 * x_1041) + 1.0f);
  let x_1044 : f32 = u_xlat47;
  u_xlat47 = (x_1044 * 0.318309873f);
  let x_1047 : f32 = u_xlat17;
  let x_1048 : f32 = u_xlat17;
  u_xlat17 = ((x_1047 * x_1048) + 0.0000001f);
  let x_1052 : f32 = u_xlat47;
  let x_1053 : f32 = u_xlat17;
  u_xlat17 = (x_1052 / x_1053);
  let x_1055 : f32 = u_xlat45;
  let x_1056 : f32 = u_xlat17;
  u_xlat45 = (x_1055 * x_1056);
  let x_1059 : f32 = u_xlat2.x;
  let x_1060 : f32 = u_xlat45;
  u_xlat45 = (x_1059 * x_1060);
  let x_1062 : f32 = u_xlat45;
  u_xlat45 = (x_1062 * 3.141592741f);
  let x_1065 : f32 = u_xlat45;
  u_xlat45 = max(x_1065, 0.0f);
  let x_1067 : f32 = u_xlat31;
  let x_1068 : f32 = u_xlat31;
  u_xlat31 = ((x_1067 * x_1068) + 1.0f);
  let x_1071 : f32 = u_xlat31;
  u_xlat1.z = (1.0f / x_1071);
  let x_1074 : vec4<f32> = u_xlat7;
  let x_1076 : vec4<f32> = u_xlat7;
  u_xlat2.x = dot(vec3<f32>(x_1074.x, x_1074.y, x_1074.z), vec3<f32>(x_1076.x, x_1076.y, x_1076.z));
  let x_1082 : f32 = u_xlat2.x;
  u_xlatb2 = !((x_1082 == 0.0f));
  let x_1084 : bool = u_xlatb2;
  u_xlat2.x = select(0.0f, 1.0f, x_1084);
  let x_1087 : f32 = u_xlat45;
  let x_1089 : f32 = u_xlat2.x;
  u_xlat45 = (x_1087 * x_1089);
  let x_1091 : f32 = u_xlat46;
  let x_1094 : f32 = u_xlat4.w;
  u_xlat46 = (-(x_1091) + x_1094);
  let x_1096 : f32 = u_xlat46;
  u_xlat46 = (x_1096 + 1.0f);
  let x_1098 : f32 = u_xlat46;
  u_xlat46 = clamp(x_1098, 0.0f, 1.0f);
  let x_1100 : f32 = u_xlat16;
  let x_1102 : vec3<f32> = u_xlat8;
  let x_1103 : vec3<f32> = (vec3<f32>(x_1100, x_1100, x_1100) * x_1102);
  let x_1104 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1103.x, x_1103.y, x_1104.z, x_1103.z);
  let x_1106 : vec3<f32> = u_xlat8;
  let x_1107 : f32 = u_xlat45;
  let x_1109 : vec3<f32> = (x_1106 * vec3<f32>(x_1107, x_1107, x_1107));
  let x_1110 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1109.x, x_1109.y, x_1109.z, x_1110.w);
  let x_1113 : f32 = u_xlat1.x;
  u_xlat0.w = (-(x_1113) + 1.0f);
  let x_1118 : f32 = u_xlat0.w;
  let x_1120 : f32 = u_xlat0.w;
  u_xlat1.x = (x_1118 * x_1120);
  let x_1124 : f32 = u_xlat1.x;
  let x_1126 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1124 * x_1126);
  let x_1129 : vec4<f32> = u_xlat0;
  let x_1130 : vec3<f32> = u_xlat1;
  u_xlat0 = (x_1129 * vec4<f32>(x_1130.z, x_1130.z, x_1130.z, x_1130.x));
  let x_1133 : vec4<f32> = u_xlat7;
  u_xlat5 = (-(vec3<f32>(x_1133.x, x_1133.y, x_1133.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1137 : vec3<f32> = u_xlat5;
  let x_1138 : vec4<f32> = u_xlat0;
  let x_1141 : vec4<f32> = u_xlat7;
  u_xlat5 = ((x_1137 * vec3<f32>(x_1138.w, x_1138.w, x_1138.w)) + vec3<f32>(x_1141.x, x_1141.y, x_1141.z));
  let x_1144 : vec4<f32> = u_xlat4;
  let x_1146 : vec3<f32> = u_xlat5;
  let x_1147 : vec3<f32> = (vec3<f32>(x_1144.x, x_1144.y, x_1144.z) * x_1146);
  let x_1148 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1147.x, x_1147.y, x_1147.z, x_1148.w);
  let x_1150 : vec3<f32> = u_xlat3;
  let x_1151 : vec4<f32> = u_xlat2;
  let x_1154 : vec4<f32> = u_xlat4;
  let x_1156 : vec3<f32> = ((x_1150 * vec3<f32>(x_1151.x, x_1151.y, x_1151.w)) + vec3<f32>(x_1154.x, x_1154.y, x_1154.z));
  let x_1157 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1156.x, x_1156.y, x_1157.z, x_1156.z);
  let x_1159 : vec4<f32> = u_xlat7;
  let x_1162 : f32 = u_xlat46;
  u_xlat1 = (-(vec3<f32>(x_1159.x, x_1159.y, x_1159.z)) + vec3<f32>(x_1162, x_1162, x_1162));
  let x_1165 : f32 = u_xlat32;
  let x_1167 : vec3<f32> = u_xlat1;
  let x_1169 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec3<f32>(x_1165, x_1165, x_1165) * x_1167) + vec3<f32>(x_1169.x, x_1169.y, x_1169.z));
  let x_1172 : vec4<f32> = u_xlat0;
  let x_1174 : vec3<f32> = u_xlat1;
  let x_1176 : vec4<f32> = u_xlat2;
  let x_1178 : vec3<f32> = ((vec3<f32>(x_1172.x, x_1172.y, x_1172.z) * x_1174) + vec3<f32>(x_1176.x, x_1176.y, x_1176.w));
  let x_1179 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1178.x, x_1178.y, x_1178.z, x_1179.w);
  let x_1183 : vec4<f32> = u_xlat6;
  let x_1185 : vec4<f32> = u_xlat0;
  let x_1187 : vec3<f32> = (vec3<f32>(x_1183.x, x_1183.y, x_1183.w) + vec3<f32>(x_1185.x, x_1185.y, x_1185.z));
  let x_1188 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1187.x, x_1187.y, x_1187.z, x_1188.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD6_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

