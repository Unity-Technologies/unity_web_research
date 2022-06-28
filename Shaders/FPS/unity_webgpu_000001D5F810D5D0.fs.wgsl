struct PGlobals {
  x_Glossiness : f32,
  x_Metallic : f32,
  x_Cutoff : f32,
  x_EdgeSize : f32,
  x_Color : vec4<f32>,
  x_EdgeColor1 : vec4<f32>,
  x_Emission : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var x_Noise : texture_2d<f32>;

@group(0) @binding(7) var sampler_Noise : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_41 : PGlobals;

var<private> u_xlat3 : f32;

var<private> u_xlat6 : f32;

var<private> u_xlatb6 : bool;

@group(0) @binding(4) var x_AO : texture_2d<f32>;

@group(0) @binding(10) var sampler_AO : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(2) var x_MetallicSmooth : texture_2d<f32>;

@group(0) @binding(9) var sampler_MetallicSmooth : sampler;

var<private> SV_Target1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> u_xlat4 : vec3<f32>;

var<private> SV_Target3 : vec4<f32>;

@group(0) @binding(5) var x_Normal : texture_2d<f32>;

@group(0) @binding(8) var sampler_Normal : sampler;

var<private> u_xlat9 : f32;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> SV_Target2 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_Noise, sampler_Noise, vec2<f32>(x_23.x, x_23.y));
  u_xlat0.x = x_25.x;
  let x_32 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_32) + 1.0f);
  let x_38 : f32 = u_xlat0.x;
  let x_46 : f32 = x_41.x_Cutoff;
  u_xlat0.x = (x_38 + -(x_46));
  let x_53 : f32 = x_41.x_EdgeSize;
  u_xlat3 = (1.0f / -(x_53));
  let x_56 : f32 = u_xlat3;
  let x_58 : f32 = u_xlat0.x;
  u_xlat0.x = (x_56 * x_58);
  let x_62 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_62, 0.0f, 1.0f);
  let x_67 : f32 = u_xlat0.x;
  u_xlat3 = ((x_67 * -2.0f) + 3.0f);
  let x_73 : f32 = u_xlat0.x;
  let x_75 : f32 = u_xlat0.x;
  u_xlat0.x = (x_73 * x_75);
  let x_79 : f32 = u_xlat3;
  let x_82 : f32 = u_xlat0.x;
  let x_85 : f32 = x_41.x_Cutoff;
  u_xlat6 = ((-(x_79) * x_82) + -(x_85));
  let x_89 : f32 = u_xlat0.x;
  let x_90 : f32 = u_xlat3;
  u_xlat0.x = (x_89 * x_90);
  let x_94 : vec4<f32> = u_xlat0;
  let x_99 : vec4<f32> = x_41.x_EdgeColor1;
  let x_101 : vec3<f32> = (vec3<f32>(x_94.x, x_94.x, x_94.x) * vec3<f32>(x_99.x, x_99.y, x_99.z));
  let x_102 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_101.x, x_101.y, x_102.z, x_101.z);
  let x_104 : f32 = u_xlat6;
  u_xlat6 = (x_104 + 1.0f);
  let x_109 : f32 = u_xlat6;
  u_xlatb6 = (x_109 < 0.0f);
  let x_111 : bool = u_xlatb6;
  if (((select(0i, 1i, x_111) * -1i) != 0i)) {
    discard;
  }
  let x_126 : vec4<f32> = vs_TEXCOORD0;
  let x_128 : vec4<f32> = textureSample(x_AO, sampler_AO, vec2<f32>(x_126.z, x_126.w));
  u_xlat6 = x_128.x;
  let x_132 : f32 = u_xlat6;
  SV_Target0.w = x_132;
  let x_143 : vec4<f32> = vs_TEXCOORD0;
  let x_145 : vec4<f32> = textureSample(x_MetallicSmooth, sampler_MetallicSmooth, vec2<f32>(x_143.z, x_143.w));
  let x_146 : vec2<f32> = vec2<f32>(x_145.x, x_145.w);
  let x_147 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_146.x, x_146.y, x_147.z);
  let x_150 : f32 = u_xlat1.x;
  let x_152 : f32 = x_41.x_Metallic;
  u_xlat6 = (x_150 * x_152);
  let x_157 : f32 = u_xlat1.y;
  let x_159 : f32 = x_41.x_Glossiness;
  SV_Target1.w = (x_157 * x_159);
  let x_162 : f32 = u_xlat6;
  u_xlat1.x = ((-(x_162) * 0.959999979f) + 0.959999979f);
  let x_174 : vec4<f32> = vs_TEXCOORD0;
  let x_176 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_174.z, x_174.w));
  u_xlat2 = x_176;
  let x_178 : vec4<f32> = u_xlat2;
  let x_182 : vec4<f32> = x_41.x_Color;
  u_xlat4 = (vec3<f32>(x_178.x, x_178.y, x_178.z) * vec3<f32>(x_182.x, x_182.y, x_182.z));
  let x_185 : vec3<f32> = u_xlat1;
  let x_187 : vec3<f32> = u_xlat4;
  let x_188 : vec3<f32> = (vec3<f32>(x_185.x, x_185.x, x_185.x) * x_187);
  let x_189 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_188.x, x_188.y, x_188.z, x_189.w);
  let x_191 : vec4<f32> = u_xlat2;
  let x_194 : vec4<f32> = x_41.x_Color;
  u_xlat1 = ((vec3<f32>(x_191.x, x_191.y, x_191.z) * vec3<f32>(x_194.x, x_194.y, x_194.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_200 : vec4<f32> = u_xlat2;
  let x_204 : vec4<f32> = x_41.x_Emission;
  let x_207 : vec4<f32> = u_xlat0;
  let x_209 : vec3<f32> = ((vec3<f32>(x_200.w, x_200.w, x_200.w) * vec3<f32>(x_204.x, x_204.y, x_204.z)) + vec3<f32>(x_207.x, x_207.y, x_207.w));
  let x_210 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_209.x, x_209.y, x_210.z, x_209.z);
  let x_213 : vec4<f32> = u_xlat0;
  let x_216 : vec3<f32> = exp2(-(vec3<f32>(x_213.x, x_213.y, x_213.w)));
  let x_217 : vec4<f32> = SV_Target3;
  SV_Target3 = vec4<f32>(x_216.x, x_216.y, x_216.z, x_217.w);
  let x_219 : f32 = u_xlat6;
  let x_221 : vec3<f32> = u_xlat1;
  let x_225 : vec3<f32> = ((vec3<f32>(x_219, x_219, x_219) * x_221) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_226 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_225.x, x_225.y, x_225.z, x_226.w);
  let x_233 : vec4<f32> = vs_TEXCOORD0;
  let x_235 : vec4<f32> = textureSample(x_Normal, sampler_Normal, vec2<f32>(x_233.z, x_233.w));
  let x_236 : vec3<f32> = vec3<f32>(x_235.x, x_235.y, x_235.w);
  let x_237 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_236.x, x_236.y, x_236.z, x_237.w);
  let x_241 : f32 = u_xlat0.z;
  let x_243 : f32 = u_xlat0.x;
  u_xlat0.x = (x_241 * x_243);
  let x_246 : vec4<f32> = u_xlat0;
  let x_253 : vec2<f32> = ((vec2<f32>(x_246.x, x_246.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_254 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_253.x, x_253.y, x_254.z, x_254.w);
  let x_257 : vec4<f32> = u_xlat0;
  let x_259 : vec4<f32> = u_xlat0;
  u_xlat9 = dot(vec2<f32>(x_257.x, x_257.y), vec2<f32>(x_259.x, x_259.y));
  let x_262 : f32 = u_xlat9;
  u_xlat9 = min(x_262, 1.0f);
  let x_264 : f32 = u_xlat9;
  u_xlat9 = (-(x_264) + 1.0f);
  let x_267 : f32 = u_xlat9;
  u_xlat0.z = sqrt(x_267);
  let x_271 : vec4<f32> = vs_TEXCOORD1;
  let x_273 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(x_271.x, x_271.y, x_271.z), vec3<f32>(x_273.x, x_273.y, x_273.z));
  let x_278 : vec4<f32> = vs_TEXCOORD2;
  let x_280 : vec4<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(x_278.x, x_278.y, x_278.z), vec3<f32>(x_280.x, x_280.y, x_280.z));
  let x_285 : vec4<f32> = vs_TEXCOORD3;
  let x_287 : vec4<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(x_285.x, x_285.y, x_285.z), vec3<f32>(x_287.x, x_287.y, x_287.z));
  let x_291 : vec3<f32> = u_xlat1;
  let x_292 : vec3<f32> = u_xlat1;
  u_xlat0.x = dot(x_291, x_292);
  let x_296 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_296);
  let x_299 : vec4<f32> = u_xlat0;
  let x_301 : vec3<f32> = u_xlat1;
  let x_302 : vec3<f32> = (vec3<f32>(x_299.x, x_299.x, x_299.x) * x_301);
  let x_303 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_302.x, x_302.y, x_302.z, x_303.w);
  let x_306 : vec4<f32> = u_xlat0;
  let x_311 : vec3<f32> = ((vec3<f32>(x_306.x, x_306.y, x_306.z) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_312 : vec4<f32> = SV_Target2;
  SV_Target2 = vec4<f32>(x_311.x, x_311.y, x_311.z, x_312.w);
  SV_Target2.w = 1.0f;
  SV_Target3.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
  @location(3)
  SV_Target3_1 : vec4<f32>,
  @location(2)
  SV_Target2_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0, SV_Target1, SV_Target3, SV_Target2);
}

