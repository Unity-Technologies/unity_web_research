type Arr = array<mat4x4<f32>, 4u>;

struct PGlobals {
  unity_WorldToShadow : Arr,
  x_LightShadowData : vec4<f32>,
  x_LightColor0 : vec4<f32>,
  x_Color : vec4<f32>,
  x_GlossMapScale : f32,
  @size(12)
  padding : u32,
  unity_WorldToLight : mat4x4<f32>,
}

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_21 : PGlobals;

@group(0) @binding(3) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(12) var sampler_LightTexture0 : sampler;

@group(0) @binding(4) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(13) var sampler_LightTextureB0 : sampler;

@group(0) @binding(6) var x_ShadowMapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_ShadowMapTexture : sampler_comparison;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(1) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_MetallicGlossMap : sampler;

@group(0) @binding(5) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_NHxRoughness : sampler;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat9 : f32;
  var u_xlatb1 : bool;
  var u_xlat3 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat6 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat7 : vec2<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec3<f32> = vs_TEXCOORD5;
  let x_27 : vec4<f32> = x_21.unity_WorldToLight[1i];
  u_xlat0 = (vec4<f32>(x_13.y, x_13.y, x_13.y, x_13.y) * x_27);
  let x_31 : vec4<f32> = x_21.unity_WorldToLight[0i];
  let x_32 : vec3<f32> = vs_TEXCOORD5;
  let x_35 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_31 * vec4<f32>(x_32.x, x_32.x, x_32.x, x_32.x)) + x_35);
  let x_39 : vec4<f32> = x_21.unity_WorldToLight[2i];
  let x_40 : vec3<f32> = vs_TEXCOORD5;
  let x_43 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_39 * vec4<f32>(x_40.z, x_40.z, x_40.z, x_40.z)) + x_43);
  let x_45 : vec4<f32> = u_xlat0;
  let x_48 : vec4<f32> = x_21.unity_WorldToLight[3i];
  u_xlat0 = (x_45 + x_48);
  let x_52 : vec4<f32> = u_xlat0;
  let x_54 : vec4<f32> = u_xlat0;
  let x_56 : vec2<f32> = (vec2<f32>(x_52.x, x_52.y) / vec2<f32>(x_54.w, x_54.w));
  let x_57 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_56.x, x_56.y, x_57.z, x_57.w);
  let x_59 : vec4<f32> = u_xlat1;
  let x_63 : vec2<f32> = (vec2<f32>(x_59.x, x_59.y) + vec2<f32>(0.5f, 0.5f));
  let x_64 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_63.x, x_63.y, x_64.z, x_64.w);
  let x_78 : vec4<f32> = u_xlat1;
  let x_80 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_78.x, x_78.y));
  u_xlat9 = x_80.w;
  let x_89 : f32 = u_xlat0.z;
  u_xlatb1 = (0.0f < x_89);
  let x_91 : vec4<f32> = u_xlat0;
  let x_93 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_91.x, x_91.y, x_91.z), vec3<f32>(x_93.x, x_93.y, x_93.z));
  let x_103 : vec4<f32> = u_xlat0;
  let x_105 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_103.x, x_103.x));
  u_xlat0.x = x_105.x;
  let x_110 : bool = u_xlatb1;
  u_xlat3.x = select(0.0f, 1.0f, x_110);
  let x_114 : f32 = u_xlat9;
  let x_116 : f32 = u_xlat3.x;
  u_xlat3.x = (x_114 * x_116);
  let x_120 : f32 = u_xlat0.x;
  let x_122 : f32 = u_xlat3.x;
  u_xlat0.x = (x_120 * x_122);
  let x_125 : vec3<f32> = vs_TEXCOORD5;
  let x_128 : vec4<f32> = x_21.unity_WorldToShadow[0i][1i];
  u_xlat1 = (vec4<f32>(x_125.y, x_125.y, x_125.y, x_125.y) * x_128);
  let x_131 : vec4<f32> = x_21.unity_WorldToShadow[0i][0i];
  let x_132 : vec3<f32> = vs_TEXCOORD5;
  let x_135 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_131 * vec4<f32>(x_132.x, x_132.x, x_132.x, x_132.x)) + x_135);
  let x_138 : vec4<f32> = x_21.unity_WorldToShadow[0i][2i];
  let x_139 : vec3<f32> = vs_TEXCOORD5;
  let x_142 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_138 * vec4<f32>(x_139.z, x_139.z, x_139.z, x_139.z)) + x_142);
  let x_144 : vec4<f32> = u_xlat1;
  let x_146 : vec4<f32> = x_21.unity_WorldToShadow[0i][3i];
  u_xlat1 = (x_144 + x_146);
  let x_148 : vec4<f32> = u_xlat1;
  let x_150 : vec4<f32> = u_xlat1;
  u_xlat3 = (vec3<f32>(x_148.x, x_148.y, x_148.z) / vec3<f32>(x_150.w, x_150.w, x_150.w));
  let x_154 : vec3<f32> = u_xlat3;
  let x_155 : vec2<f32> = vec2<f32>(x_154.x, x_154.y);
  let x_157 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_155.x, x_155.y, x_157);
  let x_169 : vec3<f32> = txVec0;
  let x_171 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_169.xy, x_169.z);
  u_xlat3.x = x_171;
  let x_176 : f32 = x_21.x_LightShadowData.x;
  u_xlat6 = (-(x_176) + 1.0f);
  let x_180 : f32 = u_xlat3.x;
  let x_181 : f32 = u_xlat6;
  let x_184 : f32 = x_21.x_LightShadowData.x;
  u_xlat3.x = ((x_180 * x_181) + x_184);
  let x_188 : f32 = u_xlat3.x;
  let x_190 : f32 = u_xlat0.x;
  u_xlat0.x = (x_188 * x_190);
  let x_193 : vec4<f32> = u_xlat0;
  let x_196 : vec4<f32> = x_21.x_LightColor0;
  let x_198 : vec3<f32> = (vec3<f32>(x_193.x, x_193.x, x_193.x) * vec3<f32>(x_196.x, x_196.y, x_196.z));
  let x_199 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_198.x, x_198.y, x_198.z, x_199.w);
  let x_208 : vec4<f32> = vs_TEXCOORD0;
  let x_210 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, vec2<f32>(x_208.x, x_208.y));
  let x_211 : vec3<f32> = vec3<f32>(x_210.x, x_210.y, x_210.w);
  let x_212 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_211.x, x_211.y, x_211.z, x_212.w);
  let x_215 : f32 = u_xlat1.z;
  let x_217 : f32 = u_xlat1.x;
  u_xlat1.x = (x_215 * x_217);
  let x_220 : vec4<f32> = u_xlat1;
  let x_227 : vec2<f32> = ((vec2<f32>(x_220.x, x_220.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_228 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_227.x, x_227.y, x_228.z, x_228.w);
  let x_231 : vec4<f32> = u_xlat1;
  let x_234 : vec4<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_231.y, x_231.y, x_231.y) * vec3<f32>(x_234.x, x_234.y, x_234.z));
  let x_238 : vec4<f32> = vs_TEXCOORD2;
  let x_240 : vec4<f32> = u_xlat1;
  let x_243 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_238.x, x_238.y, x_238.z) * vec3<f32>(x_240.x, x_240.x, x_240.x)) + x_243);
  let x_245 : vec4<f32> = u_xlat1;
  let x_247 : vec4<f32> = u_xlat1;
  u_xlat9 = dot(vec2<f32>(x_245.x, x_245.y), vec2<f32>(x_247.x, x_247.y));
  let x_250 : f32 = u_xlat9;
  u_xlat9 = min(x_250, 1.0f);
  let x_252 : f32 = u_xlat9;
  u_xlat9 = (-(x_252) + 1.0f);
  let x_255 : f32 = u_xlat9;
  u_xlat9 = sqrt(x_255);
  let x_258 : vec4<f32> = vs_TEXCOORD4;
  let x_260 : f32 = u_xlat9;
  let x_263 : vec3<f32> = u_xlat2;
  let x_264 : vec3<f32> = ((vec3<f32>(x_258.x, x_258.y, x_258.z) * vec3<f32>(x_260, x_260, x_260)) + x_263);
  let x_265 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_264.x, x_264.y, x_264.z, x_265.w);
  let x_269 : f32 = vs_TEXCOORD2.w;
  u_xlat2.x = x_269;
  let x_272 : f32 = vs_TEXCOORD3.w;
  u_xlat2.y = x_272;
  let x_276 : f32 = vs_TEXCOORD4.w;
  u_xlat2.z = x_276;
  let x_278 : vec4<f32> = u_xlat1;
  let x_280 : vec3<f32> = u_xlat2;
  u_xlat9 = dot(vec3<f32>(x_278.x, x_278.y, x_278.z), x_280);
  let x_282 : f32 = u_xlat9;
  u_xlat9 = clamp(x_282, 0.0f, 1.0f);
  let x_284 : f32 = u_xlat9;
  let x_286 : vec4<f32> = u_xlat0;
  let x_288 : vec3<f32> = (vec3<f32>(x_284, x_284, x_284) * vec3<f32>(x_286.x, x_286.y, x_286.z));
  let x_289 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_288.x, x_288.y, x_288.z, x_289.w);
  let x_292 : vec4<f32> = vs_TEXCOORD1;
  let x_295 : vec4<f32> = u_xlat1;
  u_xlat9 = dot(-(vec3<f32>(x_292.x, x_292.y, x_292.z)), vec3<f32>(x_295.x, x_295.y, x_295.z));
  let x_298 : f32 = u_xlat9;
  let x_299 : f32 = u_xlat9;
  u_xlat9 = (x_298 + x_299);
  let x_301 : vec4<f32> = u_xlat1;
  let x_303 : f32 = u_xlat9;
  let x_307 : vec4<f32> = vs_TEXCOORD1;
  let x_310 : vec3<f32> = ((vec3<f32>(x_301.x, x_301.y, x_301.z) * -(vec3<f32>(x_303, x_303, x_303))) + -(vec3<f32>(x_307.x, x_307.y, x_307.z)));
  let x_311 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_310.x, x_310.y, x_310.z, x_311.w);
  let x_313 : vec4<f32> = u_xlat1;
  let x_315 : vec3<f32> = u_xlat2;
  u_xlat9 = dot(vec3<f32>(x_313.x, x_313.y, x_313.z), x_315);
  let x_317 : f32 = u_xlat9;
  let x_318 : f32 = u_xlat9;
  u_xlat9 = (x_317 * x_318);
  let x_320 : f32 = u_xlat9;
  let x_321 : f32 = u_xlat9;
  u_xlat1.x = (x_320 * x_321);
  let x_331 : vec4<f32> = vs_TEXCOORD0;
  let x_333 : vec4<f32> = textureSample(x_MetallicGlossMap, sampler_MetallicGlossMap, vec2<f32>(x_331.x, x_331.y));
  u_xlat7 = vec2<f32>(x_333.x, x_333.w);
  let x_336 : f32 = u_xlat7.y;
  let x_340 : f32 = x_21.x_GlossMapScale;
  u_xlat1.y = ((-(x_336) * x_340) + 1.0f);
  let x_349 : vec4<f32> = u_xlat1;
  let x_351 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_349.x, x_349.y));
  u_xlat9 = x_351.x;
  let x_353 : f32 = u_xlat9;
  u_xlat9 = (x_353 * 16.0f);
  let x_361 : vec4<f32> = vs_TEXCOORD0;
  let x_363 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_361.x, x_361.y));
  let x_364 : vec3<f32> = vec3<f32>(x_363.x, x_363.y, x_363.z);
  let x_365 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_364.x, x_364.y, x_365.z, x_364.z);
  let x_368 : vec4<f32> = x_21.x_Color;
  let x_370 : vec4<f32> = u_xlat1;
  u_xlat2 = ((vec3<f32>(x_368.x, x_368.y, x_368.z) * vec3<f32>(x_370.x, x_370.y, x_370.w)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_376 : vec4<f32> = u_xlat1;
  let x_379 : vec4<f32> = x_21.x_Color;
  let x_381 : vec3<f32> = (vec3<f32>(x_376.x, x_376.y, x_376.w) * vec3<f32>(x_379.x, x_379.y, x_379.z));
  let x_382 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_381.x, x_381.y, x_382.z, x_381.z);
  let x_384 : vec2<f32> = u_xlat7;
  let x_386 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_384.x, x_384.x, x_384.x) * x_386) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_392 : f32 = u_xlat7.x;
  u_xlat7.x = ((-(x_392) * 0.959999979f) + 0.959999979f);
  let x_398 : f32 = u_xlat9;
  let x_400 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_398, x_398, x_398) * x_400);
  let x_402 : vec4<f32> = u_xlat1;
  let x_404 : vec2<f32> = u_xlat7;
  let x_407 : vec3<f32> = u_xlat2;
  let x_408 : vec3<f32> = ((vec3<f32>(x_402.x, x_402.y, x_402.w) * vec3<f32>(x_404.x, x_404.x, x_404.x)) + x_407);
  let x_409 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_408.x, x_408.y, x_408.z, x_409.w);
  let x_413 : vec4<f32> = u_xlat0;
  let x_415 : vec4<f32> = u_xlat1;
  let x_417 : vec3<f32> = (vec3<f32>(x_413.x, x_413.y, x_413.z) * vec3<f32>(x_415.x, x_415.y, x_415.z));
  let x_418 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_417.x, x_417.y, x_417.z, x_418.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(5) vs_TEXCOORD5_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

