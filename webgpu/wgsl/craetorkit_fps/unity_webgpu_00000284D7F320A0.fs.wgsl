struct PGlobals {
  x_Time : vec4<f32>,
  x_VeinColor : vec4<f32>,
  x_BrainColor : vec4<f32>,
}

@group(0) @binding(1) var x_Occlusion : texture_2d<f32>;

@group(0) @binding(7) var sampler_Occlusion : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_MainTex : sampler;

@group(0) @binding(2) var x_Metallic : texture_2d<f32>;

@group(0) @binding(5) var sampler_Metallic : sampler;

var<private> SV_Target1 : vec4<f32>;

@group(0) @binding(3) var x_NormalMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_NormalMap : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> SV_Target2 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_188 : PGlobals;

var<private> SV_Target3 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat9 : f32;
  var u_xlat6 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_Occlusion, sampler_Occlusion, x_23);
  u_xlat0.x = x_24.x;
  let x_33 : f32 = u_xlat0.x;
  SV_Target0.w = x_33;
  let x_42 : vec2<f32> = vs_TEXCOORD0;
  let x_43 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_42);
  let x_45 : vec3<f32> = vec3<f32>(x_43.x, x_43.y, x_43.z);
  let x_46 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_45.x, x_45.y, x_45.z, x_46.w);
  let x_54 : vec2<f32> = vs_TEXCOORD0;
  let x_55 : vec4<f32> = textureSample(x_Metallic, sampler_Metallic, x_54);
  u_xlat1 = x_55;
  let x_58 : f32 = u_xlat1.x;
  u_xlat9 = ((-(x_58) * 0.959999979f) + 0.959999979f);
  let x_63 : f32 = u_xlat9;
  let x_65 : vec4<f32> = u_xlat0;
  let x_67 : vec3<f32> = (vec3<f32>(x_63, x_63, x_63) * vec3<f32>(x_65.x, x_65.y, x_65.z));
  let x_68 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_67.x, x_67.y, x_67.z, x_68.w);
  let x_70 : vec4<f32> = u_xlat0;
  let x_74 : vec3<f32> = (vec3<f32>(x_70.x, x_70.y, x_70.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_75 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_74.x, x_74.y, x_74.z, x_75.w);
  let x_78 : vec4<f32> = u_xlat1;
  let x_80 : vec4<f32> = u_xlat0;
  let x_85 : vec3<f32> = ((vec3<f32>(x_78.x, x_78.x, x_78.x) * vec3<f32>(x_80.x, x_80.y, x_80.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_86 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_85.x, x_85.y, x_85.z, x_86.w);
  let x_89 : f32 = u_xlat1.w;
  SV_Target1.w = x_89;
  let x_91 : vec4<f32> = u_xlat1;
  let x_96 : vec2<f32> = (-(vec2<f32>(x_91.y, x_91.z)) + vec2<f32>(1.0f, 1.0f));
  let x_97 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_96.x, x_96.y, x_97.z, x_97.w);
  let x_104 : vec2<f32> = vs_TEXCOORD0;
  let x_105 : vec4<f32> = textureSample(x_NormalMap, sampler_NormalMap, x_104);
  let x_106 : vec3<f32> = vec3<f32>(x_105.x, x_105.y, x_105.w);
  let x_107 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_106.x, x_106.y, x_106.z, x_107.w);
  let x_111 : f32 = u_xlat1.z;
  let x_113 : f32 = u_xlat1.x;
  u_xlat1.x = (x_111 * x_113);
  let x_116 : vec4<f32> = u_xlat1;
  let x_123 : vec2<f32> = ((vec2<f32>(x_116.x, x_116.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_124 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_123.x, x_123.y, x_124.z, x_124.w);
  let x_127 : vec4<f32> = u_xlat1;
  let x_129 : vec4<f32> = u_xlat1;
  u_xlat6 = dot(vec2<f32>(x_127.x, x_127.y), vec2<f32>(x_129.x, x_129.y));
  let x_132 : f32 = u_xlat6;
  u_xlat6 = min(x_132, 1.0f);
  let x_134 : f32 = u_xlat6;
  u_xlat6 = (-(x_134) + 1.0f);
  let x_137 : f32 = u_xlat6;
  u_xlat1.z = sqrt(x_137);
  let x_144 : vec4<f32> = vs_TEXCOORD1;
  let x_146 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(vec3<f32>(x_144.x, x_144.y, x_144.z), vec3<f32>(x_146.x, x_146.y, x_146.z));
  let x_151 : vec4<f32> = vs_TEXCOORD2;
  let x_153 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(vec3<f32>(x_151.x, x_151.y, x_151.z), vec3<f32>(x_153.x, x_153.y, x_153.z));
  let x_159 : vec4<f32> = vs_TEXCOORD3;
  let x_161 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(vec3<f32>(x_159.x, x_159.y, x_159.z), vec3<f32>(x_161.x, x_161.y, x_161.z));
  let x_165 : vec3<f32> = u_xlat2;
  let x_166 : vec3<f32> = u_xlat2;
  u_xlat6 = dot(x_165, x_166);
  let x_168 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_168);
  let x_170 : f32 = u_xlat6;
  let x_172 : vec3<f32> = u_xlat2;
  let x_173 : vec3<f32> = (vec3<f32>(x_170, x_170, x_170) * x_172);
  let x_174 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_173.x, x_173.y, x_173.z, x_174.w);
  let x_177 : vec4<f32> = u_xlat1;
  let x_182 : vec3<f32> = ((vec3<f32>(x_177.x, x_177.y, x_177.z) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_183 : vec4<f32> = SV_Target2;
  SV_Target2 = vec4<f32>(x_182.x, x_182.y, x_182.z, x_183.w);
  SV_Target2.w = 1.0f;
  let x_193 : f32 = x_188.x_Time.y;
  u_xlat6 = fract(x_193);
  let x_195 : f32 = u_xlat6;
  u_xlat6 = (x_195 + -0.039999999f);
  let x_197 : f32 = u_xlat6;
  let x_201 : f32 = vs_TEXCOORD0.y;
  u_xlat6 = (-(x_197) + x_201);
  let x_203 : f32 = u_xlat6;
  u_xlat6 = (x_203 * 12.5f);
  let x_206 : f32 = u_xlat6;
  u_xlat6 = clamp(x_206, 0.0f, 1.0f);
  let x_209 : f32 = u_xlat6;
  u_xlat9 = ((x_209 * -2.0f) + 3.0f);
  let x_214 : f32 = u_xlat6;
  let x_215 : f32 = u_xlat6;
  u_xlat6 = (x_214 * x_215);
  let x_217 : f32 = u_xlat6;
  let x_218 : f32 = u_xlat9;
  u_xlat6 = (x_217 * x_218);
  let x_220 : f32 = u_xlat6;
  u_xlat6 = (x_220 * 3.140000105f);
  let x_223 : f32 = u_xlat6;
  u_xlat6 = sin(x_223);
  let x_225 : f32 = u_xlat6;
  u_xlat6 = max(x_225, 0.0f);
  let x_227 : vec4<f32> = u_xlat0;
  let x_232 : vec4<f32> = x_188.x_VeinColor;
  let x_234 : vec3<f32> = (vec3<f32>(x_227.y, x_227.y, x_227.y) * vec3<f32>(x_232.x, x_232.y, x_232.z));
  let x_235 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_234.x, x_234.y, x_234.z, x_235.w);
  let x_237 : vec4<f32> = u_xlat0;
  let x_241 : vec4<f32> = x_188.x_BrainColor;
  let x_243 : vec3<f32> = (vec3<f32>(x_237.x, x_237.x, x_237.x) * vec3<f32>(x_241.x, x_241.y, x_241.z));
  let x_244 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_243.x, x_243.y, x_244.z, x_243.z);
  let x_246 : f32 = u_xlat6;
  let x_248 : vec4<f32> = u_xlat1;
  let x_250 : vec3<f32> = (vec3<f32>(x_246, x_246, x_246) * vec3<f32>(x_248.x, x_248.y, x_248.z));
  let x_251 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_250.x, x_250.y, x_250.z, x_251.w);
  let x_254 : f32 = x_188.x_Time.y;
  u_xlat6 = (x_254 * 0.200000003f);
  let x_257 : f32 = u_xlat6;
  u_xlat6 = fract(x_257);
  let x_259 : f32 = u_xlat6;
  u_xlat6 = (x_259 * 3.140000105f);
  let x_261 : f32 = u_xlat6;
  u_xlat6 = sin(x_261);
  let x_264 : vec4<f32> = u_xlat0;
  let x_266 : f32 = u_xlat6;
  let x_269 : vec4<f32> = u_xlat1;
  let x_271 : vec3<f32> = ((vec3<f32>(x_264.x, x_264.y, x_264.w) * vec3<f32>(x_266, x_266, x_266)) + vec3<f32>(x_269.x, x_269.y, x_269.z));
  let x_272 : vec4<f32> = SV_Target3;
  SV_Target3 = vec4<f32>(x_271.x, x_271.y, x_271.z, x_272.w);
  SV_Target3.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
  @location(2)
  SV_Target2_1 : vec4<f32>,
  @location(3)
  SV_Target3_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0, SV_Target1, SV_Target2, SV_Target3);
}

