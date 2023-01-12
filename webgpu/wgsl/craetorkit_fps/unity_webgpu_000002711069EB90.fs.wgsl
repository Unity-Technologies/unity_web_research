struct PGlobals {
  x_LightPositionRange : vec4<f32>,
  x_LightProjectionParams : vec4<f32>,
  x_LightShadowData : vec4<f32>,
  x_LightColor0 : vec4<f32>,
  x_Color : vec4<f32>,
  x_Metallic : f32,
  x_Glossiness : f32,
  @size(8)
  padding : u32,
  unity_WorldToLight : mat4x4<f32>,
}

@group(0) @binding(1) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_149 : PGlobals;

@group(0) @binding(3) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(5) var samplerunity_NHxRoughness : sampler;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(4) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(6) var sampler_ShadowMapTexture : sampler_comparison;

@group(0) @binding(2) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_LightTexture0 : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat9 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
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
  let x_154 : f32 = x_149.x_Glossiness;
  u_xlat1.y = (-(x_154) + 1.0f);
  let x_163 : vec3<f32> = u_xlat1;
  let x_165 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_163.x, x_163.y));
  u_xlat3.x = x_165.x;
  let x_169 : f32 = u_xlat3.x;
  u_xlat3.x = (x_169 * 16.0f);
  let x_178 : vec4<f32> = vs_TEXCOORD0;
  let x_180 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_178.x, x_178.y));
  u_xlat1 = vec3<f32>(x_180.x, x_180.y, x_180.z);
  let x_185 : vec4<f32> = x_149.x_Color;
  let x_187 : vec3<f32> = u_xlat1;
  u_xlat2 = ((vec3<f32>(x_185.x, x_185.y, x_185.z) * x_187) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_192 : vec3<f32> = u_xlat1;
  let x_194 : vec4<f32> = x_149.x_Color;
  u_xlat1 = (x_192 * vec3<f32>(x_194.x, x_194.y, x_194.z));
  let x_199 : f32 = x_149.x_Metallic;
  let x_201 : f32 = x_149.x_Metallic;
  let x_203 : f32 = x_149.x_Metallic;
  let x_204 : vec3<f32> = vec3<f32>(x_199, x_201, x_203);
  let x_209 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_204.x, x_204.y, x_204.z) * x_209) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_214 : vec3<f32> = u_xlat3;
  let x_216 : vec3<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_214.x, x_214.x, x_214.x) * x_216);
  let x_220 : f32 = x_149.x_Metallic;
  u_xlat10 = ((-(x_220) * 0.959999979f) + 0.959999979f);
  let x_225 : vec3<f32> = u_xlat1;
  let x_226 : f32 = u_xlat10;
  let x_229 : vec3<f32> = u_xlat3;
  u_xlat3 = ((x_225 * vec3<f32>(x_226, x_226, x_226)) + x_229);
  let x_233 : vec3<f32> = vs_TEXCOORD5;
  let x_236 : vec4<f32> = x_149.x_LightPositionRange;
  u_xlat1 = (x_233 + -(vec3<f32>(x_236.x, x_236.y, x_236.z)));
  let x_241 : f32 = u_xlat1.y;
  let x_244 : f32 = u_xlat1.x;
  u_xlat10 = max(abs(x_241), abs(x_244));
  let x_248 : f32 = u_xlat1.z;
  let x_250 : f32 = u_xlat10;
  u_xlat10 = max(abs(x_248), x_250);
  let x_252 : f32 = u_xlat10;
  let x_255 : f32 = x_149.x_LightProjectionParams.z;
  u_xlat10 = (x_252 + -(x_255));
  let x_258 : f32 = u_xlat10;
  u_xlat10 = max(x_258, 0.00001f);
  let x_261 : f32 = u_xlat10;
  let x_263 : f32 = x_149.x_LightProjectionParams.w;
  u_xlat10 = (x_261 * x_263);
  let x_266 : f32 = x_149.x_LightProjectionParams.y;
  let x_267 : f32 = u_xlat10;
  u_xlat10 = (x_266 / x_267);
  let x_269 : f32 = u_xlat10;
  let x_271 : f32 = x_149.x_LightProjectionParams.x;
  u_xlat10 = (x_269 + -(x_271));
  let x_274 : f32 = u_xlat10;
  u_xlat10 = (-(x_274) + 1.0f);
  let x_279 : vec3<f32> = u_xlat1;
  let x_280 : f32 = u_xlat10;
  txVec0 = vec4<f32>(x_279.x, x_279.y, x_279.z, x_280);
  let x_293 : vec4<f32> = txVec0;
  let x_295 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_293.xyz, x_293.w);
  u_xlat1.x = x_295;
  let x_300 : f32 = x_149.x_LightShadowData.x;
  u_xlat4.x = (-(x_300) + 1.0f);
  let x_305 : f32 = u_xlat1.x;
  let x_307 : f32 = u_xlat4.x;
  let x_310 : f32 = x_149.x_LightShadowData.x;
  u_xlat1.x = ((x_305 * x_307) + x_310);
  let x_313 : vec3<f32> = vs_TEXCOORD5;
  let x_317 : vec4<f32> = x_149.unity_WorldToLight[1i];
  u_xlat4 = (vec3<f32>(x_313.y, x_313.y, x_313.y) * vec3<f32>(x_317.x, x_317.y, x_317.z));
  let x_321 : vec4<f32> = x_149.unity_WorldToLight[0i];
  let x_323 : vec3<f32> = vs_TEXCOORD5;
  let x_326 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_321.x, x_321.y, x_321.z) * vec3<f32>(x_323.x, x_323.x, x_323.x)) + x_326);
  let x_329 : vec4<f32> = x_149.unity_WorldToLight[2i];
  let x_331 : vec3<f32> = vs_TEXCOORD5;
  let x_334 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_329.x, x_329.y, x_329.z) * vec3<f32>(x_331.z, x_331.z, x_331.z)) + x_334);
  let x_336 : vec3<f32> = u_xlat4;
  let x_339 : vec4<f32> = x_149.unity_WorldToLight[3i];
  u_xlat4 = (x_336 + vec3<f32>(x_339.x, x_339.y, x_339.z));
  let x_342 : vec3<f32> = u_xlat4;
  let x_343 : vec3<f32> = u_xlat4;
  u_xlat4.x = dot(x_342, x_343);
  let x_351 : vec3<f32> = u_xlat4;
  let x_353 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_351.x, x_351.x));
  u_xlat4.x = x_353.x;
  let x_357 : f32 = u_xlat1.x;
  let x_359 : f32 = u_xlat4.x;
  u_xlat1.x = (x_357 * x_359);
  let x_362 : vec3<f32> = u_xlat1;
  let x_365 : vec4<f32> = x_149.x_LightColor0;
  u_xlat1 = (vec3<f32>(x_362.x, x_362.x, x_362.x) * vec3<f32>(x_365.x, x_365.y, x_365.z));
  let x_368 : vec3<f32> = u_xlat0;
  let x_370 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_368.x, x_368.x, x_368.x) * x_370);
  let x_374 : vec3<f32> = u_xlat3;
  let x_375 : vec3<f32> = u_xlat1;
  let x_376 : vec3<f32> = (x_374 * x_375);
  let x_377 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_376.x, x_376.y, x_376.z, x_377.w);
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

