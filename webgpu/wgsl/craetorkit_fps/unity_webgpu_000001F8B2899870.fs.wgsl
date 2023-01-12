struct PGlobals {
  unity_OcclusionMaskSelector : vec4<f32>,
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
  x_GlossMapScale : f32,
  @size(12)
  padding_2 : u32,
  unity_WorldToLight : mat4x4<f32>,
}

@group(0) @binding(1) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_MetallicGlossMap : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

@group(1) @binding(0) var<uniform> x_46 : PGlobals;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(5) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(6) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(3) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(11) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(4) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_NHxRoughness : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat14 : vec2<f32>;
  var u_xlat22 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlatb14 : bool;
  var u_xlat5 : vec4<f32>;
  var x_229 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MetallicGlossMap, sampler_MetallicGlossMap, vec2<f32>(x_23.x, x_23.y));
  let x_26 : vec2<f32> = vec2<f32>(x_25.x, x_25.w);
  let x_27 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_26.x, x_26.y, x_27.z, x_27.w);
  let x_37 : vec4<f32> = vs_TEXCOORD0;
  let x_39 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_37.x, x_37.y));
  u_xlat1 = vec3<f32>(x_39.x, x_39.y, x_39.z);
  let x_42 : vec3<f32> = u_xlat1;
  let x_51 : vec4<f32> = x_46.x_Color;
  u_xlat2 = (x_42 * vec3<f32>(x_51.x, x_51.y, x_51.z));
  let x_55 : vec4<f32> = x_46.x_Color;
  let x_57 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_55.x, x_55.y, x_55.z) * x_57) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_62 : vec4<f32> = u_xlat0;
  let x_64 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_62.x, x_62.x, x_62.x) * x_64) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_73 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_73) * 0.959999979f) + 0.959999979f);
  let x_85 : vec4<f32> = vs_TEXCOORD0;
  let x_87 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, vec2<f32>(x_85.x, x_85.y));
  u_xlat3 = vec3<f32>(x_87.x, x_87.y, x_87.w);
  let x_91 : f32 = u_xlat3.z;
  let x_93 : f32 = u_xlat3.x;
  u_xlat3.x = (x_91 * x_93);
  let x_98 : vec3<f32> = u_xlat3;
  u_xlat14 = ((vec2<f32>(x_98.x, x_98.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_107 : vec2<f32> = u_xlat14;
  let x_108 : vec2<f32> = u_xlat14;
  u_xlat22 = dot(x_107, x_108);
  let x_110 : f32 = u_xlat22;
  u_xlat22 = min(x_110, 1.0f);
  let x_113 : f32 = u_xlat22;
  u_xlat22 = (-(x_113) + 1.0f);
  let x_116 : f32 = u_xlat22;
  u_xlat22 = sqrt(x_116);
  let x_118 : vec2<f32> = u_xlat14;
  let x_121 : vec4<f32> = vs_TEXCOORD3;
  u_xlat3 = (vec3<f32>(x_118.y, x_118.y, x_118.y) * vec3<f32>(x_121.x, x_121.y, x_121.z));
  let x_125 : vec4<f32> = vs_TEXCOORD2;
  let x_127 : vec2<f32> = u_xlat14;
  let x_130 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_125.x, x_125.y, x_125.z) * vec3<f32>(x_127.x, x_127.x, x_127.x)) + x_130);
  let x_133 : vec4<f32> = vs_TEXCOORD4;
  let x_135 : f32 = u_xlat22;
  let x_138 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_133.x, x_133.y, x_133.z) * vec3<f32>(x_135, x_135, x_135)) + x_138);
  let x_143 : vec3<f32> = vs_TEXCOORD5;
  let x_148 : vec4<f32> = x_46.unity_WorldToLight[1i];
  u_xlat4 = (vec3<f32>(x_143.y, x_143.y, x_143.y) * vec3<f32>(x_148.x, x_148.y, x_148.z));
  let x_153 : vec4<f32> = x_46.unity_WorldToLight[0i];
  let x_155 : vec3<f32> = vs_TEXCOORD5;
  let x_158 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_153.x, x_153.y, x_153.z) * vec3<f32>(x_155.x, x_155.x, x_155.x)) + x_158);
  let x_162 : vec4<f32> = x_46.unity_WorldToLight[2i];
  let x_164 : vec3<f32> = vs_TEXCOORD5;
  let x_167 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_162.x, x_162.y, x_162.z) * vec3<f32>(x_164.z, x_164.z, x_164.z)) + x_167);
  let x_169 : vec3<f32> = u_xlat4;
  let x_172 : vec4<f32> = x_46.unity_WorldToLight[3i];
  u_xlat4 = (x_169 + vec3<f32>(x_172.x, x_172.y, x_172.z));
  let x_180 : f32 = x_46.unity_ProbeVolumeParams.x;
  u_xlatb14 = (x_180 == 1.0f);
  let x_182 : bool = u_xlatb14;
  if (x_182) {
    let x_187 : f32 = x_46.unity_ProbeVolumeParams.y;
    u_xlatb14 = (x_187 == 1.0f);
    let x_190 : vec3<f32> = vs_TEXCOORD5;
    let x_193 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[1i];
    let x_195 : vec3<f32> = (vec3<f32>(x_190.y, x_190.y, x_190.y) * vec3<f32>(x_193.x, x_193.y, x_193.z));
    let x_196 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_195.x, x_195.y, x_195.z, x_196.w);
    let x_199 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[0i];
    let x_201 : vec3<f32> = vs_TEXCOORD5;
    let x_204 : vec4<f32> = u_xlat5;
    let x_206 : vec3<f32> = ((vec3<f32>(x_199.x, x_199.y, x_199.z) * vec3<f32>(x_201.x, x_201.x, x_201.x)) + vec3<f32>(x_204.x, x_204.y, x_204.z));
    let x_207 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_206.x, x_206.y, x_206.z, x_207.w);
    let x_210 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[2i];
    let x_212 : vec3<f32> = vs_TEXCOORD5;
    let x_215 : vec4<f32> = u_xlat5;
    let x_217 : vec3<f32> = ((vec3<f32>(x_210.x, x_210.y, x_210.z) * vec3<f32>(x_212.z, x_212.z, x_212.z)) + vec3<f32>(x_215.x, x_215.y, x_215.z));
    let x_218 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_217.x, x_217.y, x_217.z, x_218.w);
    let x_220 : vec4<f32> = u_xlat5;
    let x_223 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[3i];
    let x_225 : vec3<f32> = (vec3<f32>(x_220.x, x_220.y, x_220.z) + vec3<f32>(x_223.x, x_223.y, x_223.z));
    let x_226 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_225.x, x_225.y, x_225.z, x_226.w);
    let x_228 : bool = u_xlatb14;
    if (x_228) {
      let x_232 : vec4<f32> = u_xlat5;
      x_229 = vec3<f32>(x_232.x, x_232.y, x_232.z);
    } else {
      let x_235 : vec3<f32> = vs_TEXCOORD5;
      x_229 = x_235;
    }
    let x_236 : vec3<f32> = x_229;
    let x_237 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_236.x, x_236.y, x_236.z, x_237.w);
    let x_239 : vec4<f32> = u_xlat5;
    let x_244 : vec3<f32> = x_46.unity_ProbeVolumeMin;
    let x_246 : vec3<f32> = (vec3<f32>(x_239.x, x_239.y, x_239.z) + -(x_244));
    let x_247 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_246.x, x_246.y, x_246.z, x_247.w);
    let x_249 : vec4<f32> = u_xlat5;
    let x_252 : vec3<f32> = x_46.unity_ProbeVolumeSizeInv;
    let x_253 : vec3<f32> = (vec3<f32>(x_249.x, x_249.y, x_249.z) * x_252);
    let x_254 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_254.x, x_253.x, x_253.y, x_253.z);
    let x_257 : f32 = u_xlat5.y;
    u_xlat14.x = ((x_257 * 0.25f) + 0.75f);
    let x_265 : f32 = x_46.unity_ProbeVolumeParams.z;
    u_xlat21 = ((x_265 * 0.5f) + 0.75f);
    let x_269 : f32 = u_xlat21;
    let x_271 : f32 = u_xlat14.x;
    u_xlat5.x = max(x_269, x_271);
    let x_282 : vec4<f32> = u_xlat5;
    let x_284 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_282.x, x_282.z, x_282.w));
    u_xlat5 = x_284;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_291 : vec4<f32> = u_xlat5;
  let x_293 : vec4<f32> = x_46.unity_OcclusionMaskSelector;
  u_xlat14.x = dot(x_291, x_293);
  let x_297 : f32 = u_xlat14.x;
  u_xlat14.x = clamp(x_297, 0.0f, 1.0f);
  let x_301 : vec3<f32> = u_xlat4;
  let x_302 : vec3<f32> = u_xlat4;
  u_xlat21 = dot(x_301, x_302);
  let x_309 : f32 = u_xlat21;
  let x_311 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_309, x_309));
  u_xlat21 = x_311.x;
  let x_314 : f32 = u_xlat14.x;
  let x_315 : f32 = u_xlat21;
  u_xlat14.x = (x_314 * x_315);
  let x_318 : vec2<f32> = u_xlat14;
  let x_322 : vec4<f32> = x_46.x_LightColor0;
  u_xlat4 = (vec3<f32>(x_318.x, x_318.x, x_318.x) * vec3<f32>(x_322.x, x_322.y, x_322.z));
  let x_326 : vec4<f32> = vs_TEXCOORD1;
  let x_329 : vec3<f32> = u_xlat3;
  u_xlat14.x = dot(-(vec3<f32>(x_326.x, x_326.y, x_326.z)), x_329);
  let x_333 : f32 = u_xlat14.x;
  let x_335 : f32 = u_xlat14.x;
  u_xlat14.x = (x_333 + x_335);
  let x_338 : vec3<f32> = u_xlat3;
  let x_339 : vec2<f32> = u_xlat14;
  let x_343 : vec4<f32> = vs_TEXCOORD1;
  let x_346 : vec3<f32> = ((x_338 * -(vec3<f32>(x_339.x, x_339.x, x_339.x))) + -(vec3<f32>(x_343.x, x_343.y, x_343.z)));
  let x_347 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_346.x, x_346.y, x_346.z, x_347.w);
  let x_352 : f32 = vs_TEXCOORD2.w;
  u_xlat6.x = x_352;
  let x_355 : f32 = vs_TEXCOORD3.w;
  u_xlat6.y = x_355;
  let x_358 : f32 = vs_TEXCOORD4.w;
  u_xlat6.z = x_358;
  let x_360 : vec3<f32> = u_xlat3;
  let x_361 : vec3<f32> = u_xlat6;
  u_xlat14.x = dot(x_360, x_361);
  let x_365 : f32 = u_xlat14.x;
  u_xlat14.x = clamp(x_365, 0.0f, 1.0f);
  let x_368 : vec4<f32> = u_xlat5;
  let x_370 : vec3<f32> = u_xlat6;
  u_xlat21 = dot(vec3<f32>(x_368.x, x_368.y, x_368.z), x_370);
  let x_372 : f32 = u_xlat21;
  let x_373 : f32 = u_xlat21;
  u_xlat21 = (x_372 * x_373);
  let x_375 : f32 = u_xlat21;
  let x_376 : f32 = u_xlat21;
  u_xlat3.x = (x_375 * x_376);
  let x_380 : f32 = u_xlat0.y;
  let x_384 : f32 = x_46.x_GlossMapScale;
  u_xlat3.y = ((-(x_380) * x_384) + 1.0f);
  let x_394 : vec3<f32> = u_xlat3;
  let x_396 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_394.x, x_394.y));
  u_xlat7 = x_396.x;
  let x_398 : f32 = u_xlat7;
  u_xlat7 = (x_398 * 16.0f);
  let x_401 : vec3<f32> = u_xlat1;
  let x_402 : f32 = u_xlat7;
  u_xlat1 = (x_401 * vec3<f32>(x_402, x_402, x_402));
  let x_405 : vec3<f32> = u_xlat2;
  let x_406 : vec4<f32> = u_xlat0;
  let x_409 : vec3<f32> = u_xlat1;
  let x_410 : vec3<f32> = ((x_405 * vec3<f32>(x_406.x, x_406.x, x_406.x)) + x_409);
  let x_411 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_410.x, x_410.y, x_411.z, x_410.z);
  let x_413 : vec2<f32> = u_xlat14;
  let x_415 : vec3<f32> = u_xlat4;
  u_xlat1 = (vec3<f32>(x_413.x, x_413.x, x_413.x) * x_415);
  let x_419 : vec4<f32> = u_xlat0;
  let x_421 : vec3<f32> = u_xlat1;
  let x_422 : vec3<f32> = (vec3<f32>(x_419.x, x_419.y, x_419.w) * x_421);
  let x_423 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_422.x, x_422.y, x_422.z, x_423.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

