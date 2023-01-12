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
  var u_xlat1 : vec3<f32>;
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
  u_xlat1 = (vec3<f32>(x_179, x_179, x_179) * vec3<f32>(x_181.x, x_181.y, x_181.z));
  let x_188 : f32 = vs_TEXCOORD2.w;
  u_xlat2.x = x_188;
  let x_192 : f32 = vs_TEXCOORD3.w;
  u_xlat2.y = x_192;
  let x_195 : f32 = vs_TEXCOORD4.w;
  u_xlat2.z = x_195;
  let x_197 : vec3<f32> = u_xlat1;
  let x_198 : vec3<f32> = u_xlat2;
  u_xlat9 = dot(x_197, x_198);
  let x_200 : f32 = u_xlat9;
  u_xlat9 = clamp(x_200, 0.0f, 1.0f);
  let x_203 : f32 = u_xlat9;
  let x_205 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_203, x_203, x_203) * x_205);
  let x_208 : vec4<f32> = vs_TEXCOORD1;
  let x_211 : vec3<f32> = u_xlat1;
  u_xlat9 = dot(-(vec3<f32>(x_208.x, x_208.y, x_208.z)), x_211);
  let x_213 : f32 = u_xlat9;
  let x_214 : f32 = u_xlat9;
  u_xlat9 = (x_213 + x_214);
  let x_216 : vec3<f32> = u_xlat1;
  let x_217 : f32 = u_xlat9;
  let x_221 : vec4<f32> = vs_TEXCOORD1;
  u_xlat1 = ((x_216 * -(vec3<f32>(x_217, x_217, x_217))) + -(vec3<f32>(x_221.x, x_221.y, x_221.z)));
  let x_225 : vec3<f32> = u_xlat1;
  let x_226 : vec3<f32> = u_xlat2;
  u_xlat9 = dot(x_225, x_226);
  let x_228 : f32 = u_xlat9;
  let x_229 : f32 = u_xlat9;
  u_xlat9 = (x_228 * x_229);
  let x_231 : f32 = u_xlat9;
  let x_232 : f32 = u_xlat9;
  u_xlat1.x = (x_231 * x_232);
  let x_237 : f32 = x_17.x_Glossiness;
  u_xlat1.y = (-(x_237) + 1.0f);
  let x_246 : vec3<f32> = u_xlat1;
  let x_248 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_246.x, x_246.y));
  u_xlat9 = x_248.x;
  let x_250 : f32 = u_xlat9;
  u_xlat9 = (x_250 * 16.0f);
  let x_259 : vec4<f32> = vs_TEXCOORD0;
  let x_261 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_259.x, x_259.y));
  u_xlat1 = vec3<f32>(x_261.x, x_261.y, x_261.z);
  let x_265 : vec4<f32> = x_17.x_Color;
  let x_267 : vec3<f32> = u_xlat1;
  u_xlat2 = ((vec3<f32>(x_265.x, x_265.y, x_265.z) * x_267) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_272 : vec3<f32> = u_xlat1;
  let x_274 : vec4<f32> = x_17.x_Color;
  u_xlat1 = (x_272 * vec3<f32>(x_274.x, x_274.y, x_274.z));
  let x_279 : f32 = x_17.x_Metallic;
  let x_281 : f32 = x_17.x_Metallic;
  let x_283 : f32 = x_17.x_Metallic;
  let x_284 : vec3<f32> = vec3<f32>(x_279, x_281, x_283);
  let x_289 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_284.x, x_284.y, x_284.z) * x_289) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_294 : f32 = u_xlat9;
  let x_296 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_294, x_294, x_294) * x_296);
  let x_299 : f32 = x_17.x_Metallic;
  u_xlat9 = ((-(x_299) * 0.959999979f) + 0.959999979f);
  let x_304 : vec3<f32> = u_xlat1;
  let x_305 : f32 = u_xlat9;
  let x_308 : vec3<f32> = u_xlat2;
  u_xlat1 = ((x_304 * vec3<f32>(x_305, x_305, x_305)) + x_308);
  let x_310 : vec3<f32> = u_xlat0;
  let x_311 : vec3<f32> = u_xlat1;
  u_xlat0 = (x_310 * x_311);
  let x_314 : f32 = vs_TEXCOORD1.w;
  u_xlat9 = x_314;
  let x_315 : f32 = u_xlat9;
  u_xlat9 = clamp(x_315, 0.0f, 1.0f);
  let x_319 : vec3<f32> = u_xlat0;
  let x_320 : f32 = u_xlat9;
  let x_322 : vec3<f32> = (x_319 * vec3<f32>(x_320, x_320, x_320));
  let x_323 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
  SV_Target0.w = 1.0f;
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

