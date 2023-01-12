struct PGlobals {
  x_Time : vec4<f32>,
  x_Glossiness : f32,
  x_Metallic : f32,
  @size(8)
  padding : u32,
  x_Color : vec4<f32>,
  x_AmbientColor : vec4<f32>,
  x_NormalSacle : f32,
  x_MovementSpeed : f32,
}

var<private> vs_COLOR0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

var<private> SV_Target1 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(1) var x_Normal : texture_2d<f32>;

@group(0) @binding(3) var sampler_Normal : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> SV_Target2 : vec4<f32>;

var<private> SV_Target3 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlatb0 : bool;
  var u_xlat6 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_17 : f32 = vs_COLOR0.w;
  u_xlat0.x = (-(x_17) + 1.0f);
  let x_38 : vec4<f32> = vs_TEXCOORD0;
  let x_40 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_38.x, x_38.y));
  u_xlat1 = x_40;
  let x_42 : f32 = u_xlat1.w;
  let x_50 : f32 = x_45.x_Color.w;
  let x_53 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_42 * x_50) + -(x_53));
  let x_58 : vec4<f32> = u_xlat1;
  let x_62 : vec4<f32> = x_45.x_Color;
  u_xlat2 = (vec3<f32>(x_58.x, x_58.y, x_58.z) * vec3<f32>(x_62.x, x_62.y, x_62.z));
  let x_69 : f32 = u_xlat0.x;
  u_xlatb0 = (x_69 < 0.0f);
  let x_72 : bool = u_xlatb0;
  if (((select(0i, 1i, x_72) * -1i) != 0i)) {
    discard;
  }
  let x_82 : vec3<f32> = u_xlat2;
  let x_83 : vec4<f32> = vs_COLOR0;
  let x_85 : vec3<f32> = (x_82 * vec3<f32>(x_83.x, x_83.y, x_83.z));
  let x_86 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_85.x, x_85.y, x_85.z, x_86.w);
  let x_88 : vec3<f32> = u_xlat2;
  let x_89 : vec4<f32> = vs_COLOR0;
  u_xlat0 = ((x_88 * vec3<f32>(x_89.x, x_89.y, x_89.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_99 : f32 = x_45.x_Metallic;
  let x_101 : f32 = x_45.x_Metallic;
  let x_103 : f32 = x_45.x_Metallic;
  let x_104 : vec3<f32> = vec3<f32>(x_99, x_101, x_103);
  let x_109 : vec3<f32> = u_xlat0;
  let x_113 : vec3<f32> = ((vec3<f32>(x_104.x, x_104.y, x_104.z) * x_109) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_114 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_113.x, x_113.y, x_113.z, x_114.w);
  let x_117 : f32 = x_45.x_Metallic;
  u_xlat0.x = ((-(x_117) * 0.959999979f) + 0.959999979f);
  let x_124 : vec3<f32> = u_xlat0;
  let x_126 : vec4<f32> = u_xlat1;
  let x_128 : vec3<f32> = (vec3<f32>(x_124.x, x_124.x, x_124.x) * vec3<f32>(x_126.x, x_126.y, x_126.z));
  let x_129 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_128.x, x_128.y, x_128.z, x_129.w);
  SV_Target0.w = 1.0f;
  let x_134 : f32 = x_45.x_Glossiness;
  SV_Target1.w = x_134;
  let x_137 : f32 = x_45.x_Time.x;
  let x_140 : f32 = x_45.x_MovementSpeed;
  let x_144 : f32 = vs_TEXCOORD0.z;
  u_xlat0.x = ((x_137 * x_140) + x_144);
  let x_148 : f32 = x_45.x_Time.x;
  let x_151 : f32 = x_45.x_MovementSpeed;
  let x_154 : f32 = vs_TEXCOORD0.w;
  u_xlat0.y = ((-(x_148) * x_151) + x_154);
  let x_163 : vec3<f32> = u_xlat0;
  let x_165 : vec4<f32> = textureSample(x_Normal, sampler_Normal, vec2<f32>(x_163.x, x_163.y));
  u_xlat0 = vec3<f32>(x_165.x, x_165.y, x_165.w);
  let x_168 : f32 = u_xlat0.z;
  let x_170 : f32 = u_xlat0.x;
  u_xlat0.x = (x_168 * x_170);
  let x_173 : vec3<f32> = u_xlat0;
  let x_180 : vec2<f32> = ((vec2<f32>(x_173.x, x_173.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_181 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_180.x, x_180.y, x_181.z);
  let x_183 : vec3<f32> = u_xlat0;
  let x_187 : f32 = x_45.x_NormalSacle;
  let x_189 : vec2<f32> = (vec2<f32>(x_183.x, x_183.y) * vec2<f32>(x_187, x_187));
  let x_190 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_189.x, x_189.y, x_190.z);
  let x_193 : vec3<f32> = u_xlat0;
  let x_195 : vec3<f32> = u_xlat0;
  u_xlat6 = dot(vec2<f32>(x_193.x, x_193.y), vec2<f32>(x_195.x, x_195.y));
  let x_198 : f32 = u_xlat6;
  u_xlat6 = min(x_198, 1.0f);
  let x_200 : f32 = u_xlat6;
  u_xlat6 = (-(x_200) + 1.0f);
  let x_203 : f32 = u_xlat6;
  u_xlat0.z = sqrt(x_203);
  let x_207 : vec4<f32> = vs_TEXCOORD1;
  let x_209 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(x_207.x, x_207.y, x_207.z), x_209);
  let x_213 : vec4<f32> = vs_TEXCOORD2;
  let x_215 : vec3<f32> = u_xlat0;
  u_xlat1.y = dot(vec3<f32>(x_213.x, x_213.y, x_213.z), x_215);
  let x_219 : vec4<f32> = vs_TEXCOORD3;
  let x_221 : vec3<f32> = u_xlat0;
  u_xlat1.z = dot(vec3<f32>(x_219.x, x_219.y, x_219.z), x_221);
  let x_224 : vec4<f32> = u_xlat1;
  let x_226 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(x_224.x, x_224.y, x_224.z), vec3<f32>(x_226.x, x_226.y, x_226.z));
  let x_231 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_231);
  let x_234 : vec3<f32> = u_xlat0;
  let x_236 : vec4<f32> = u_xlat1;
  u_xlat0 = (vec3<f32>(x_234.x, x_234.x, x_234.x) * vec3<f32>(x_236.x, x_236.y, x_236.z));
  let x_240 : vec3<f32> = u_xlat0;
  let x_244 : vec3<f32> = ((x_240 * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_245 : vec4<f32> = SV_Target2;
  SV_Target2 = vec4<f32>(x_244.x, x_244.y, x_244.z, x_245.w);
  SV_Target2.w = 1.0f;
  let x_251 : vec4<f32> = x_45.x_AmbientColor;
  let x_252 : vec3<f32> = vec3<f32>(x_251.x, x_251.y, x_251.z);
  let x_253 : vec4<f32> = SV_Target3;
  SV_Target3 = vec4<f32>(x_252.x, x_252.y, x_252.z, x_253.w);
  SV_Target3.w = 1.0f;
  return;
}

struct main_out {
  @location(1)
  SV_Target1_1 : vec4<f32>,
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(2)
  SV_Target2_1 : vec4<f32>,
  @location(3)
  SV_Target3_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_COLOR0_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target1, SV_Target0, SV_Target2, SV_Target3);
}

