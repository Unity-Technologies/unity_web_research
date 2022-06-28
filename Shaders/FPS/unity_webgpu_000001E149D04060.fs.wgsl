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

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_17 : PGlobals;

var<private> u_xlat9 : f32;

@group(0) @binding(4) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(6) var sampler_ShadowMapTexture : sampler_comparison;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(2) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(8) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(3) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(5) var samplerunity_NHxRoughness : sampler;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var txVec0 : vec4<f32>;
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
  let x_180 : f32 = u_xlat9;
  let x_182 : vec4<f32> = vs_TEXCOORD4;
  let x_184 : vec3<f32> = (vec3<f32>(x_180, x_180, x_180) * vec3<f32>(x_182.x, x_182.y, x_182.z));
  let x_185 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_184.x, x_184.y, x_184.z, x_185.w);
  let x_191 : f32 = vs_TEXCOORD2.w;
  u_xlat2.x = x_191;
  let x_195 : f32 = vs_TEXCOORD3.w;
  u_xlat2.y = x_195;
  let x_198 : f32 = vs_TEXCOORD4.w;
  u_xlat2.z = x_198;
  let x_200 : vec4<f32> = u_xlat1;
  let x_202 : vec3<f32> = u_xlat2;
  u_xlat9 = dot(vec3<f32>(x_200.x, x_200.y, x_200.z), x_202);
  let x_204 : f32 = u_xlat9;
  u_xlat9 = clamp(x_204, 0.0f, 1.0f);
  let x_207 : f32 = u_xlat9;
  let x_209 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_207, x_207, x_207) * x_209);
  let x_212 : vec4<f32> = vs_TEXCOORD1;
  let x_215 : vec4<f32> = u_xlat1;
  u_xlat9 = dot(-(vec3<f32>(x_212.x, x_212.y, x_212.z)), vec3<f32>(x_215.x, x_215.y, x_215.z));
  let x_218 : f32 = u_xlat9;
  let x_219 : f32 = u_xlat9;
  u_xlat9 = (x_218 + x_219);
  let x_221 : vec4<f32> = u_xlat1;
  let x_223 : f32 = u_xlat9;
  let x_227 : vec4<f32> = vs_TEXCOORD1;
  let x_230 : vec3<f32> = ((vec3<f32>(x_221.x, x_221.y, x_221.z) * -(vec3<f32>(x_223, x_223, x_223))) + -(vec3<f32>(x_227.x, x_227.y, x_227.z)));
  let x_231 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_230.x, x_230.y, x_230.z, x_231.w);
  let x_233 : vec4<f32> = u_xlat1;
  let x_235 : vec3<f32> = u_xlat2;
  u_xlat9 = dot(vec3<f32>(x_233.x, x_233.y, x_233.z), x_235);
  let x_237 : f32 = u_xlat9;
  let x_238 : f32 = u_xlat9;
  u_xlat9 = (x_237 * x_238);
  let x_240 : f32 = u_xlat9;
  let x_241 : f32 = u_xlat9;
  u_xlat1.x = (x_240 * x_241);
  let x_246 : f32 = x_17.x_Glossiness;
  u_xlat1.y = (-(x_246) + 1.0f);
  let x_255 : vec4<f32> = u_xlat1;
  let x_257 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_255.x, x_255.y));
  u_xlat9 = x_257.x;
  let x_259 : f32 = u_xlat9;
  u_xlat9 = (x_259 * 16.0f);
  let x_268 : vec4<f32> = vs_TEXCOORD0;
  let x_270 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_268.x, x_268.y));
  u_xlat1 = x_270;
  let x_273 : vec4<f32> = x_17.x_Color;
  let x_275 : vec4<f32> = u_xlat1;
  u_xlat2 = ((vec3<f32>(x_273.x, x_273.y, x_273.z) * vec3<f32>(x_275.x, x_275.y, x_275.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_283 : f32 = x_17.x_Metallic;
  let x_285 : f32 = x_17.x_Metallic;
  let x_287 : f32 = x_17.x_Metallic;
  let x_288 : vec3<f32> = vec3<f32>(x_283, x_285, x_287);
  let x_293 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_288.x, x_288.y, x_288.z) * x_293) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_298 : f32 = u_xlat9;
  let x_300 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_298, x_298, x_298) * x_300);
  let x_303 : f32 = x_17.x_Metallic;
  u_xlat9 = ((-(x_303) * 0.959999979f) + 0.959999979f);
  let x_308 : vec4<f32> = u_xlat1;
  let x_311 : vec4<f32> = x_17.x_Color;
  let x_313 : vec3<f32> = (vec3<f32>(x_308.x, x_308.y, x_308.z) * vec3<f32>(x_311.x, x_311.y, x_311.z));
  let x_314 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_313.x, x_313.y, x_313.z, x_314.w);
  let x_319 : f32 = u_xlat1.w;
  let x_321 : f32 = x_17.x_Color.w;
  SV_Target0.w = (x_319 * x_321);
  let x_325 : vec4<f32> = u_xlat1;
  let x_327 : f32 = u_xlat9;
  let x_330 : vec3<f32> = u_xlat2;
  let x_331 : vec3<f32> = ((vec3<f32>(x_325.x, x_325.y, x_325.z) * vec3<f32>(x_327, x_327, x_327)) + x_330);
  let x_332 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_331.x, x_331.y, x_331.z, x_332.w);
  let x_334 : vec3<f32> = u_xlat0;
  let x_335 : vec4<f32> = u_xlat1;
  let x_337 : vec3<f32> = (x_334 * vec3<f32>(x_335.x, x_335.y, x_335.z));
  let x_338 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_337.x, x_337.y, x_337.z, x_338.w);
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

