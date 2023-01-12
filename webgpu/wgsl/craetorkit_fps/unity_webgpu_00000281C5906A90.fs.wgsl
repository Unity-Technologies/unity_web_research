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

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_17 : PGlobals;

@group(0) @binding(5) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(7) var sampler_ShadowMapTexture : sampler_comparison;

@group(0) @binding(3) var x_LightTexture0 : texture_cube<f32>;

@group(0) @binding(10) var sampler_LightTexture0 : sampler;

@group(0) @binding(2) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(11) var sampler_LightTextureB0 : sampler;

@group(0) @binding(1) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(4) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(6) var samplerunity_NHxRoughness : sampler;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat9 : f32;
  var txVec0 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat6 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD5;
  let x_22 : vec4<f32> = x_17.x_LightPositionRange;
  u_xlat0 = (x_12 + -(vec3<f32>(x_22.x, x_22.y, x_22.z)));
  let x_31 : f32 = u_xlat0.y;
  let x_35 : f32 = u_xlat0.x;
  u_xlat9 = max(abs(x_31), abs(x_35));
  let x_40 : f32 = u_xlat0.z;
  let x_42 : f32 = u_xlat9;
  u_xlat9 = max(abs(x_40), x_42);
  let x_44 : f32 = u_xlat9;
  let x_48 : f32 = x_17.x_LightProjectionParams.z;
  u_xlat9 = (x_44 + -(x_48));
  let x_51 : f32 = u_xlat9;
  u_xlat9 = max(x_51, 0.00001f);
  let x_54 : f32 = u_xlat9;
  let x_57 : f32 = x_17.x_LightProjectionParams.w;
  u_xlat9 = (x_54 * x_57);
  let x_60 : f32 = x_17.x_LightProjectionParams.y;
  let x_61 : f32 = u_xlat9;
  u_xlat9 = (x_60 / x_61);
  let x_63 : f32 = u_xlat9;
  let x_65 : f32 = x_17.x_LightProjectionParams.x;
  u_xlat9 = (x_63 + -(x_65));
  let x_68 : f32 = u_xlat9;
  u_xlat9 = (-(x_68) + 1.0f);
  let x_74 : vec3<f32> = u_xlat0;
  let x_75 : f32 = u_xlat9;
  txVec0 = vec4<f32>(x_74.x, x_74.y, x_74.z, x_75);
  let x_90 : vec4<f32> = txVec0;
  let x_92 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_90.xyz, x_90.w);
  u_xlat0.x = x_92;
  let x_97 : f32 = x_17.x_LightShadowData.x;
  u_xlat3.x = (-(x_97) + 1.0f);
  let x_102 : f32 = u_xlat0.x;
  let x_104 : f32 = u_xlat3.x;
  let x_107 : f32 = x_17.x_LightShadowData.x;
  u_xlat0.x = ((x_102 * x_104) + x_107);
  let x_110 : vec3<f32> = vs_TEXCOORD5;
  let x_114 : vec4<f32> = x_17.unity_WorldToLight[1i];
  u_xlat3 = (vec3<f32>(x_110.y, x_110.y, x_110.y) * vec3<f32>(x_114.x, x_114.y, x_114.z));
  let x_118 : vec4<f32> = x_17.unity_WorldToLight[0i];
  let x_120 : vec3<f32> = vs_TEXCOORD5;
  let x_123 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_118.x, x_118.y, x_118.z) * vec3<f32>(x_120.x, x_120.x, x_120.x)) + x_123);
  let x_126 : vec4<f32> = x_17.unity_WorldToLight[2i];
  let x_128 : vec3<f32> = vs_TEXCOORD5;
  let x_131 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_126.x, x_126.y, x_126.z) * vec3<f32>(x_128.z, x_128.z, x_128.z)) + x_131);
  let x_133 : vec3<f32> = u_xlat3;
  let x_136 : vec4<f32> = x_17.unity_WorldToLight[3i];
  u_xlat3 = (x_133 + vec3<f32>(x_136.x, x_136.y, x_136.z));
  let x_140 : vec3<f32> = u_xlat3;
  let x_141 : vec3<f32> = u_xlat3;
  u_xlat1.x = dot(x_140, x_141);
  let x_152 : vec3<f32> = u_xlat3;
  let x_153 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, x_152);
  u_xlat3.x = x_153.w;
  let x_166 : vec3<f32> = u_xlat1;
  let x_168 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_166.x, x_166.x));
  u_xlat6 = x_168.x;
  let x_171 : f32 = u_xlat3.x;
  let x_172 : f32 = u_xlat6;
  u_xlat3.x = (x_171 * x_172);
  let x_176 : f32 = u_xlat0.x;
  let x_178 : f32 = u_xlat3.x;
  u_xlat0.x = (x_176 * x_178);
  let x_181 : vec3<f32> = u_xlat0;
  let x_184 : vec4<f32> = x_17.x_LightColor0;
  u_xlat0 = (vec3<f32>(x_181.x, x_181.x, x_181.x) * vec3<f32>(x_184.x, x_184.y, x_184.z));
  let x_194 : vec4<f32> = vs_TEXCOORD0;
  let x_196 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, vec2<f32>(x_194.x, x_194.y));
  u_xlat1 = vec3<f32>(x_196.x, x_196.y, x_196.w);
  let x_199 : f32 = u_xlat1.z;
  let x_201 : f32 = u_xlat1.x;
  u_xlat1.x = (x_199 * x_201);
  let x_204 : vec3<f32> = u_xlat1;
  let x_211 : vec2<f32> = ((vec2<f32>(x_204.x, x_204.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_212 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_211.x, x_211.y, x_212.z);
  let x_215 : vec3<f32> = u_xlat1;
  let x_218 : vec4<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_215.y, x_215.y, x_215.y) * vec3<f32>(x_218.x, x_218.y, x_218.z));
  let x_222 : vec4<f32> = vs_TEXCOORD2;
  let x_224 : vec3<f32> = u_xlat1;
  let x_227 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_222.x, x_222.y, x_222.z) * vec3<f32>(x_224.x, x_224.x, x_224.x)) + x_227);
  let x_229 : vec3<f32> = u_xlat1;
  let x_231 : vec3<f32> = u_xlat1;
  u_xlat9 = dot(vec2<f32>(x_229.x, x_229.y), vec2<f32>(x_231.x, x_231.y));
  let x_234 : f32 = u_xlat9;
  u_xlat9 = min(x_234, 1.0f);
  let x_236 : f32 = u_xlat9;
  u_xlat9 = (-(x_236) + 1.0f);
  let x_239 : f32 = u_xlat9;
  u_xlat9 = sqrt(x_239);
  let x_242 : vec4<f32> = vs_TEXCOORD4;
  let x_244 : f32 = u_xlat9;
  let x_247 : vec3<f32> = u_xlat2;
  u_xlat1 = ((vec3<f32>(x_242.x, x_242.y, x_242.z) * vec3<f32>(x_244, x_244, x_244)) + x_247);
  let x_251 : f32 = vs_TEXCOORD2.w;
  u_xlat2.x = x_251;
  let x_254 : f32 = vs_TEXCOORD3.w;
  u_xlat2.y = x_254;
  let x_257 : f32 = vs_TEXCOORD4.w;
  u_xlat2.z = x_257;
  let x_259 : vec3<f32> = u_xlat1;
  let x_260 : vec3<f32> = u_xlat2;
  u_xlat9 = dot(x_259, x_260);
  let x_262 : f32 = u_xlat9;
  u_xlat9 = clamp(x_262, 0.0f, 1.0f);
  let x_265 : f32 = u_xlat9;
  let x_267 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_265, x_265, x_265) * x_267);
  let x_270 : vec4<f32> = vs_TEXCOORD1;
  let x_273 : vec3<f32> = u_xlat1;
  u_xlat9 = dot(-(vec3<f32>(x_270.x, x_270.y, x_270.z)), x_273);
  let x_275 : f32 = u_xlat9;
  let x_276 : f32 = u_xlat9;
  u_xlat9 = (x_275 + x_276);
  let x_278 : vec3<f32> = u_xlat1;
  let x_279 : f32 = u_xlat9;
  let x_283 : vec4<f32> = vs_TEXCOORD1;
  u_xlat1 = ((x_278 * -(vec3<f32>(x_279, x_279, x_279))) + -(vec3<f32>(x_283.x, x_283.y, x_283.z)));
  let x_287 : vec3<f32> = u_xlat1;
  let x_288 : vec3<f32> = u_xlat2;
  u_xlat9 = dot(x_287, x_288);
  let x_290 : f32 = u_xlat9;
  let x_291 : f32 = u_xlat9;
  u_xlat9 = (x_290 * x_291);
  let x_293 : f32 = u_xlat9;
  let x_294 : f32 = u_xlat9;
  u_xlat1.x = (x_293 * x_294);
  let x_299 : f32 = x_17.x_Glossiness;
  u_xlat1.y = (-(x_299) + 1.0f);
  let x_308 : vec3<f32> = u_xlat1;
  let x_310 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_308.x, x_308.y));
  u_xlat9 = x_310.x;
  let x_312 : f32 = u_xlat9;
  u_xlat9 = (x_312 * 16.0f);
  let x_320 : vec4<f32> = vs_TEXCOORD0;
  let x_322 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_320.x, x_320.y));
  u_xlat1 = vec3<f32>(x_322.x, x_322.y, x_322.z);
  let x_326 : vec4<f32> = x_17.x_Color;
  let x_328 : vec3<f32> = u_xlat1;
  u_xlat2 = ((vec3<f32>(x_326.x, x_326.y, x_326.z) * x_328) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_333 : vec3<f32> = u_xlat1;
  let x_335 : vec4<f32> = x_17.x_Color;
  u_xlat1 = (x_333 * vec3<f32>(x_335.x, x_335.y, x_335.z));
  let x_340 : f32 = x_17.x_Metallic;
  let x_342 : f32 = x_17.x_Metallic;
  let x_344 : f32 = x_17.x_Metallic;
  let x_345 : vec3<f32> = vec3<f32>(x_340, x_342, x_344);
  let x_350 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_345.x, x_345.y, x_345.z) * x_350) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_355 : f32 = u_xlat9;
  let x_357 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_355, x_355, x_355) * x_357);
  let x_360 : f32 = x_17.x_Metallic;
  u_xlat9 = ((-(x_360) * 0.959999979f) + 0.959999979f);
  let x_365 : vec3<f32> = u_xlat1;
  let x_366 : f32 = u_xlat9;
  let x_369 : vec3<f32> = u_xlat2;
  u_xlat1 = ((x_365 * vec3<f32>(x_366, x_366, x_366)) + x_369);
  let x_373 : vec3<f32> = u_xlat0;
  let x_374 : vec3<f32> = u_xlat1;
  let x_375 : vec3<f32> = (x_373 * x_374);
  let x_376 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_375.x, x_375.y, x_375.z, x_376.w);
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

