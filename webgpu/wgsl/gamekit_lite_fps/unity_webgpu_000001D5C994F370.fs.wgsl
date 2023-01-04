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

@group(0) @binding(5) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(7) var sampler_ShadowMapTexture : sampler_comparison;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(3) var x_LightTexture0 : texture_cube<f32>;

@group(0) @binding(9) var sampler_LightTexture0 : sampler;

var<private> u_xlat6 : f32;

@group(0) @binding(2) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(10) var sampler_LightTextureB0 : sampler;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(4) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(6) var samplerunity_NHxRoughness : sampler;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

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
  let x_189 : vec4<f32> = vs_TEXCOORD4;
  let x_191 : vec4<f32> = vs_TEXCOORD4;
  u_xlat9 = dot(vec3<f32>(x_189.x, x_189.y, x_189.z), vec3<f32>(x_191.x, x_191.y, x_191.z));
  let x_194 : f32 = u_xlat9;
  u_xlat9 = inverseSqrt(x_194);
  let x_196 : f32 = u_xlat9;
  let x_198 : vec4<f32> = vs_TEXCOORD4;
  u_xlat1 = (vec3<f32>(x_196, x_196, x_196) * vec3<f32>(x_198.x, x_198.y, x_198.z));
  let x_205 : f32 = vs_TEXCOORD2.w;
  u_xlat2.x = x_205;
  let x_209 : f32 = vs_TEXCOORD3.w;
  u_xlat2.y = x_209;
  let x_212 : f32 = vs_TEXCOORD4.w;
  u_xlat2.z = x_212;
  let x_214 : vec3<f32> = u_xlat1;
  let x_215 : vec3<f32> = u_xlat2;
  u_xlat9 = dot(x_214, x_215);
  let x_217 : f32 = u_xlat9;
  u_xlat9 = clamp(x_217, 0.0f, 1.0f);
  let x_220 : f32 = u_xlat9;
  let x_222 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_220, x_220, x_220) * x_222);
  let x_225 : vec4<f32> = vs_TEXCOORD1;
  let x_228 : vec3<f32> = u_xlat1;
  u_xlat9 = dot(-(vec3<f32>(x_225.x, x_225.y, x_225.z)), x_228);
  let x_230 : f32 = u_xlat9;
  let x_231 : f32 = u_xlat9;
  u_xlat9 = (x_230 + x_231);
  let x_233 : vec3<f32> = u_xlat1;
  let x_234 : f32 = u_xlat9;
  let x_238 : vec4<f32> = vs_TEXCOORD1;
  u_xlat1 = ((x_233 * -(vec3<f32>(x_234, x_234, x_234))) + -(vec3<f32>(x_238.x, x_238.y, x_238.z)));
  let x_242 : vec3<f32> = u_xlat1;
  let x_243 : vec3<f32> = u_xlat2;
  u_xlat9 = dot(x_242, x_243);
  let x_245 : f32 = u_xlat9;
  let x_246 : f32 = u_xlat9;
  u_xlat9 = (x_245 * x_246);
  let x_248 : f32 = u_xlat9;
  let x_249 : f32 = u_xlat9;
  u_xlat1.x = (x_248 * x_249);
  let x_254 : f32 = x_17.x_Glossiness;
  u_xlat1.y = (-(x_254) + 1.0f);
  let x_263 : vec3<f32> = u_xlat1;
  let x_265 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_263.x, x_263.y));
  u_xlat9 = x_265.x;
  let x_267 : f32 = u_xlat9;
  u_xlat9 = (x_267 * 16.0f);
  let x_276 : vec4<f32> = vs_TEXCOORD0;
  let x_278 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_276.x, x_276.y));
  u_xlat1 = vec3<f32>(x_278.x, x_278.y, x_278.z);
  let x_282 : vec4<f32> = x_17.x_Color;
  let x_284 : vec3<f32> = u_xlat1;
  u_xlat2 = ((vec3<f32>(x_282.x, x_282.y, x_282.z) * x_284) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_289 : vec3<f32> = u_xlat1;
  let x_291 : vec4<f32> = x_17.x_Color;
  u_xlat1 = (x_289 * vec3<f32>(x_291.x, x_291.y, x_291.z));
  let x_296 : f32 = x_17.x_Metallic;
  let x_298 : f32 = x_17.x_Metallic;
  let x_300 : f32 = x_17.x_Metallic;
  let x_301 : vec3<f32> = vec3<f32>(x_296, x_298, x_300);
  let x_306 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_301.x, x_301.y, x_301.z) * x_306) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_311 : f32 = u_xlat9;
  let x_313 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_311, x_311, x_311) * x_313);
  let x_316 : f32 = x_17.x_Metallic;
  u_xlat9 = ((-(x_316) * 0.959999979f) + 0.959999979f);
  let x_321 : vec3<f32> = u_xlat1;
  let x_322 : f32 = u_xlat9;
  let x_325 : vec3<f32> = u_xlat2;
  u_xlat1 = ((x_321 * vec3<f32>(x_322, x_322, x_322)) + x_325);
  let x_329 : vec3<f32> = u_xlat0;
  let x_330 : vec3<f32> = u_xlat1;
  let x_331 : vec3<f32> = (x_329 * x_330);
  let x_332 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_331.x, x_331.y, x_331.z, x_332.w);
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

