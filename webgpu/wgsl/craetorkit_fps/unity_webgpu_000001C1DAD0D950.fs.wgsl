struct PGlobals {
  x_LightPositionRange : vec4<f32>,
  x_LightProjectionParams : vec4<f32>,
  x_LightShadowData : vec4<f32>,
  x_LightColor0 : vec4<f32>,
  x_Color : vec4<f32>,
  x_GlossMapScale : f32,
  @size(12)
  padding : u32,
  unity_WorldToLight : mat4x4<f32>,
}

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(1) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_MetallicGlossMap : sampler;

@group(1) @binding(0) var<uniform> x_163 : PGlobals;

@group(0) @binding(4) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(6) var samplerunity_NHxRoughness : sampler;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(5) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(7) var sampler_ShadowMapTexture : sampler_comparison;

@group(0) @binding(3) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(11) var sampler_LightTexture0 : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat9 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat6 : f32;
  var u_xlat10 : f32;
  var txVec0 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_24 : vec4<f32> = vs_TEXCOORD0;
  let x_26 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, vec2<f32>(x_24.x, x_24.y));
  u_xlat0 = vec3<f32>(x_26.x, x_26.y, x_26.w);
  let x_32 : f32 = u_xlat0.z;
  let x_35 : f32 = u_xlat0.x;
  u_xlat0.x = (x_32 * x_35);
  let x_38 : vec3<f32> = u_xlat0;
  let x_45 : vec2<f32> = ((vec2<f32>(x_38.x, x_38.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_46 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_45.x, x_45.y, x_46.z);
  let x_49 : vec3<f32> = u_xlat0;
  let x_52 : vec4<f32> = vs_TEXCOORD3;
  u_xlat1 = (vec3<f32>(x_49.y, x_49.y, x_49.y) * vec3<f32>(x_52.x, x_52.y, x_52.z));
  let x_56 : vec4<f32> = vs_TEXCOORD2;
  let x_58 : vec3<f32> = u_xlat0;
  let x_61 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_56.x, x_56.y, x_56.z) * vec3<f32>(x_58.x, x_58.x, x_58.x)) + x_61);
  let x_63 : vec3<f32> = u_xlat0;
  let x_65 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(vec2<f32>(x_63.x, x_63.y), vec2<f32>(x_65.x, x_65.y));
  let x_70 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_70, 1.0f);
  let x_75 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_75) + 1.0f);
  let x_80 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_80);
  let x_84 : vec4<f32> = vs_TEXCOORD4;
  let x_86 : vec3<f32> = u_xlat0;
  let x_89 : vec3<f32> = u_xlat1;
  u_xlat0 = ((vec3<f32>(x_84.x, x_84.y, x_84.z) * vec3<f32>(x_86.x, x_86.x, x_86.x)) + x_89);
  let x_93 : vec4<f32> = vs_TEXCOORD1;
  let x_96 : vec3<f32> = u_xlat0;
  u_xlat9 = dot(-(vec3<f32>(x_93.x, x_93.y, x_93.z)), x_96);
  let x_98 : f32 = u_xlat9;
  let x_99 : f32 = u_xlat9;
  u_xlat9 = (x_98 + x_99);
  let x_101 : vec3<f32> = u_xlat0;
  let x_102 : f32 = u_xlat9;
  let x_106 : vec4<f32> = vs_TEXCOORD1;
  u_xlat1 = ((x_101 * -(vec3<f32>(x_102, x_102, x_102))) + -(vec3<f32>(x_106.x, x_106.y, x_106.z)));
  let x_114 : f32 = vs_TEXCOORD2.w;
  u_xlat2.x = x_114;
  let x_117 : f32 = vs_TEXCOORD3.w;
  u_xlat2.y = x_117;
  let x_121 : f32 = vs_TEXCOORD4.w;
  u_xlat2.z = x_121;
  let x_123 : vec3<f32> = u_xlat1;
  let x_124 : vec3<f32> = u_xlat2;
  u_xlat9 = dot(x_123, x_124);
  let x_126 : vec3<f32> = u_xlat0;
  let x_127 : vec3<f32> = u_xlat2;
  u_xlat0.x = dot(x_126, x_127);
  let x_131 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_131, 0.0f, 1.0f);
  let x_136 : f32 = u_xlat9;
  let x_137 : f32 = u_xlat9;
  u_xlat3.x = (x_136 * x_137);
  let x_141 : f32 = u_xlat3.x;
  let x_143 : f32 = u_xlat3.x;
  u_xlat1.x = (x_141 * x_143);
  let x_151 : vec4<f32> = vs_TEXCOORD0;
  let x_153 : vec4<f32> = textureSample(x_MetallicGlossMap, sampler_MetallicGlossMap, vec2<f32>(x_151.x, x_151.y));
  let x_154 : vec2<f32> = vec2<f32>(x_153.x, x_153.w);
  let x_155 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_154.x, x_154.y, x_155.z);
  let x_158 : f32 = u_xlat3.y;
  let x_168 : f32 = x_163.x_GlossMapScale;
  u_xlat1.y = ((-(x_158) * x_168) + 1.0f);
  let x_178 : vec3<f32> = u_xlat1;
  let x_180 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_178.x, x_178.y));
  u_xlat6 = x_180.x;
  let x_182 : f32 = u_xlat6;
  u_xlat6 = (x_182 * 16.0f);
  let x_190 : vec4<f32> = vs_TEXCOORD0;
  let x_192 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_190.x, x_190.y));
  u_xlat1 = vec3<f32>(x_192.x, x_192.y, x_192.z);
  let x_197 : vec4<f32> = x_163.x_Color;
  let x_199 : vec3<f32> = u_xlat1;
  u_xlat2 = ((vec3<f32>(x_197.x, x_197.y, x_197.z) * x_199) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_204 : vec3<f32> = u_xlat1;
  let x_206 : vec4<f32> = x_163.x_Color;
  u_xlat1 = (x_204 * vec3<f32>(x_206.x, x_206.y, x_206.z));
  let x_209 : vec3<f32> = u_xlat3;
  let x_211 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_209.x, x_209.x, x_209.x) * x_211) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_217 : f32 = u_xlat3.x;
  u_xlat3.x = ((-(x_217) * 0.959999979f) + 0.959999979f);
  let x_223 : f32 = u_xlat6;
  let x_225 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_223, x_223, x_223) * x_225);
  let x_227 : vec3<f32> = u_xlat1;
  let x_228 : vec3<f32> = u_xlat3;
  let x_231 : vec3<f32> = u_xlat2;
  u_xlat3 = ((x_227 * vec3<f32>(x_228.x, x_228.x, x_228.x)) + x_231);
  let x_235 : vec3<f32> = vs_TEXCOORD5;
  let x_238 : vec4<f32> = x_163.x_LightPositionRange;
  u_xlat1 = (x_235 + -(vec3<f32>(x_238.x, x_238.y, x_238.z)));
  let x_244 : f32 = u_xlat1.y;
  let x_247 : f32 = u_xlat1.x;
  u_xlat10 = max(abs(x_244), abs(x_247));
  let x_251 : f32 = u_xlat1.z;
  let x_253 : f32 = u_xlat10;
  u_xlat10 = max(abs(x_251), x_253);
  let x_255 : f32 = u_xlat10;
  let x_258 : f32 = x_163.x_LightProjectionParams.z;
  u_xlat10 = (x_255 + -(x_258));
  let x_261 : f32 = u_xlat10;
  u_xlat10 = max(x_261, 0.00001f);
  let x_264 : f32 = u_xlat10;
  let x_266 : f32 = x_163.x_LightProjectionParams.w;
  u_xlat10 = (x_264 * x_266);
  let x_269 : f32 = x_163.x_LightProjectionParams.y;
  let x_270 : f32 = u_xlat10;
  u_xlat10 = (x_269 / x_270);
  let x_272 : f32 = u_xlat10;
  let x_274 : f32 = x_163.x_LightProjectionParams.x;
  u_xlat10 = (x_272 + -(x_274));
  let x_277 : f32 = u_xlat10;
  u_xlat10 = (-(x_277) + 1.0f);
  let x_282 : vec3<f32> = u_xlat1;
  let x_283 : f32 = u_xlat10;
  txVec0 = vec4<f32>(x_282.x, x_282.y, x_282.z, x_283);
  let x_296 : vec4<f32> = txVec0;
  let x_298 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_296.xyz, x_296.w);
  u_xlat1.x = x_298;
  let x_303 : f32 = x_163.x_LightShadowData.x;
  u_xlat4.x = (-(x_303) + 1.0f);
  let x_308 : f32 = u_xlat1.x;
  let x_310 : f32 = u_xlat4.x;
  let x_313 : f32 = x_163.x_LightShadowData.x;
  u_xlat1.x = ((x_308 * x_310) + x_313);
  let x_316 : vec3<f32> = vs_TEXCOORD5;
  let x_320 : vec4<f32> = x_163.unity_WorldToLight[1i];
  u_xlat4 = (vec3<f32>(x_316.y, x_316.y, x_316.y) * vec3<f32>(x_320.x, x_320.y, x_320.z));
  let x_324 : vec4<f32> = x_163.unity_WorldToLight[0i];
  let x_326 : vec3<f32> = vs_TEXCOORD5;
  let x_329 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_324.x, x_324.y, x_324.z) * vec3<f32>(x_326.x, x_326.x, x_326.x)) + x_329);
  let x_332 : vec4<f32> = x_163.unity_WorldToLight[2i];
  let x_334 : vec3<f32> = vs_TEXCOORD5;
  let x_337 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_332.x, x_332.y, x_332.z) * vec3<f32>(x_334.z, x_334.z, x_334.z)) + x_337);
  let x_339 : vec3<f32> = u_xlat4;
  let x_342 : vec4<f32> = x_163.unity_WorldToLight[3i];
  u_xlat4 = (x_339 + vec3<f32>(x_342.x, x_342.y, x_342.z));
  let x_345 : vec3<f32> = u_xlat4;
  let x_346 : vec3<f32> = u_xlat4;
  u_xlat4.x = dot(x_345, x_346);
  let x_354 : vec3<f32> = u_xlat4;
  let x_356 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_354.x, x_354.x));
  u_xlat4.x = x_356.x;
  let x_360 : f32 = u_xlat1.x;
  let x_362 : f32 = u_xlat4.x;
  u_xlat1.x = (x_360 * x_362);
  let x_365 : vec3<f32> = u_xlat1;
  let x_368 : vec4<f32> = x_163.x_LightColor0;
  u_xlat1 = (vec3<f32>(x_365.x, x_365.x, x_365.x) * vec3<f32>(x_368.x, x_368.y, x_368.z));
  let x_371 : vec3<f32> = u_xlat0;
  let x_373 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_371.x, x_371.x, x_371.x) * x_373);
  let x_375 : vec3<f32> = u_xlat3;
  let x_376 : vec3<f32> = u_xlat1;
  u_xlat0 = (x_375 * x_376);
  let x_379 : f32 = vs_TEXCOORD1.w;
  u_xlat9 = x_379;
  let x_380 : f32 = u_xlat9;
  u_xlat9 = clamp(x_380, 0.0f, 1.0f);
  let x_384 : vec3<f32> = u_xlat0;
  let x_385 : f32 = u_xlat9;
  let x_387 : vec3<f32> = (x_384 * vec3<f32>(x_385, x_385, x_385));
  let x_388 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_387.x, x_387.y, x_387.z, x_388.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
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

