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

@group(0) @binding(3) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(5) var sampler_ShadowMapTexture : sampler_comparison;

@group(0) @binding(1) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(7) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(2) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(4) var samplerunity_NHxRoughness : sampler;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat9 : f32;
  var txVec0 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
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
  let x_139 : vec3<f32> = u_xlat3;
  let x_140 : vec3<f32> = u_xlat3;
  u_xlat3.x = dot(x_139, x_140);
  let x_152 : vec3<f32> = u_xlat3;
  let x_154 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_152.x, x_152.x));
  u_xlat3.x = x_154.x;
  let x_158 : f32 = u_xlat0.x;
  let x_160 : f32 = u_xlat3.x;
  u_xlat0.x = (x_158 * x_160);
  let x_163 : vec3<f32> = u_xlat0;
  let x_166 : vec4<f32> = x_17.x_LightColor0;
  u_xlat0 = (vec3<f32>(x_163.x, x_163.x, x_163.x) * vec3<f32>(x_166.x, x_166.y, x_166.z));
  let x_171 : vec4<f32> = vs_TEXCOORD4;
  let x_173 : vec4<f32> = vs_TEXCOORD4;
  u_xlat9 = dot(vec3<f32>(x_171.x, x_171.y, x_171.z), vec3<f32>(x_173.x, x_173.y, x_173.z));
  let x_176 : f32 = u_xlat9;
  u_xlat9 = inverseSqrt(x_176);
  let x_179 : f32 = u_xlat9;
  let x_181 : vec4<f32> = vs_TEXCOORD4;
  let x_183 : vec3<f32> = (vec3<f32>(x_179, x_179, x_179) * vec3<f32>(x_181.x, x_181.y, x_181.z));
  let x_184 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_183.x, x_183.y, x_183.z, x_184.w);
  let x_190 : f32 = vs_TEXCOORD2.w;
  u_xlat2.x = x_190;
  let x_194 : f32 = vs_TEXCOORD3.w;
  u_xlat2.y = x_194;
  let x_197 : f32 = vs_TEXCOORD4.w;
  u_xlat2.z = x_197;
  let x_199 : vec4<f32> = u_xlat1;
  let x_201 : vec3<f32> = u_xlat2;
  u_xlat9 = dot(vec3<f32>(x_199.x, x_199.y, x_199.z), x_201);
  let x_203 : f32 = u_xlat9;
  u_xlat9 = clamp(x_203, 0.0f, 1.0f);
  let x_206 : f32 = u_xlat9;
  let x_208 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_206, x_206, x_206) * x_208);
  let x_211 : vec4<f32> = vs_TEXCOORD1;
  let x_214 : vec4<f32> = u_xlat1;
  u_xlat9 = dot(-(vec3<f32>(x_211.x, x_211.y, x_211.z)), vec3<f32>(x_214.x, x_214.y, x_214.z));
  let x_217 : f32 = u_xlat9;
  let x_218 : f32 = u_xlat9;
  u_xlat9 = (x_217 + x_218);
  let x_220 : vec4<f32> = u_xlat1;
  let x_222 : f32 = u_xlat9;
  let x_226 : vec4<f32> = vs_TEXCOORD1;
  let x_229 : vec3<f32> = ((vec3<f32>(x_220.x, x_220.y, x_220.z) * -(vec3<f32>(x_222, x_222, x_222))) + -(vec3<f32>(x_226.x, x_226.y, x_226.z)));
  let x_230 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_229.x, x_229.y, x_229.z, x_230.w);
  let x_232 : vec4<f32> = u_xlat1;
  let x_234 : vec3<f32> = u_xlat2;
  u_xlat9 = dot(vec3<f32>(x_232.x, x_232.y, x_232.z), x_234);
  let x_236 : f32 = u_xlat9;
  let x_237 : f32 = u_xlat9;
  u_xlat9 = (x_236 * x_237);
  let x_239 : f32 = u_xlat9;
  let x_240 : f32 = u_xlat9;
  u_xlat1.x = (x_239 * x_240);
  let x_245 : f32 = x_17.x_Glossiness;
  u_xlat1.y = (-(x_245) + 1.0f);
  let x_254 : vec4<f32> = u_xlat1;
  let x_256 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_254.x, x_254.y));
  u_xlat9 = x_256.x;
  let x_258 : f32 = u_xlat9;
  u_xlat9 = (x_258 * 16.0f);
  let x_267 : vec4<f32> = vs_TEXCOORD0;
  let x_269 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_267.x, x_267.y));
  u_xlat1 = x_269;
  let x_270 : vec4<f32> = u_xlat1;
  let x_274 : vec4<f32> = x_17.x_Color;
  u_xlat2 = ((vec3<f32>(x_270.x, x_270.y, x_270.z) * vec3<f32>(x_274.x, x_274.y, x_274.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_280 : vec4<f32> = u_xlat1;
  let x_283 : vec4<f32> = x_17.x_Color;
  u_xlat1 = (vec4<f32>(x_280.w, x_280.x, x_280.y, x_280.z) * vec4<f32>(x_283.w, x_283.x, x_283.y, x_283.z));
  let x_288 : f32 = x_17.x_Metallic;
  let x_290 : f32 = x_17.x_Metallic;
  let x_292 : f32 = x_17.x_Metallic;
  let x_293 : vec3<f32> = vec3<f32>(x_288, x_290, x_292);
  let x_298 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_293.x, x_293.y, x_293.z) * x_298) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_303 : f32 = u_xlat9;
  let x_305 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_303, x_303, x_303) * x_305);
  let x_308 : f32 = x_17.x_Metallic;
  u_xlat9 = ((-(x_308) * 0.959999979f) + 0.959999979f);
  let x_314 : f32 = u_xlat9;
  let x_316 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec3<f32>(x_314, x_314, x_314) * vec3<f32>(x_316.y, x_316.z, x_316.w));
  let x_319 : vec3<f32> = u_xlat4;
  let x_320 : vec4<f32> = u_xlat1;
  let x_323 : vec3<f32> = u_xlat2;
  u_xlat4 = ((x_319 * vec3<f32>(x_320.x, x_320.x, x_320.x)) + x_323);
  let x_328 : f32 = u_xlat1.x;
  SV_Target0.w = x_328;
  let x_331 : vec3<f32> = u_xlat0;
  let x_332 : vec3<f32> = u_xlat4;
  let x_333 : vec3<f32> = (x_331 * x_332);
  let x_334 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(5) vs_TEXCOORD5_param : vec3<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

