struct VGlobals {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(0) @binding(11) var<uniform> x_17 : VGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat9 : f32;

var<private> in_TANGENT0 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_23 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_23);
  let x_26 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_27 : vec4<f32> = in_POSITION0;
  let x_30 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_26 * vec4<f32>(x_27.x, x_27.x, x_27.x, x_27.x)) + x_30);
  let x_34 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_35 : vec4<f32> = in_POSITION0;
  let x_38 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_34 * vec4<f32>(x_35.z, x_35.z, x_35.z, x_35.z)) + x_38);
  let x_41 : vec4<f32> = u_xlat0;
  let x_44 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  u_xlat1 = (x_41 + x_44);
  let x_50 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  let x_52 : vec4<f32> = in_POSITION0;
  let x_55 : vec4<f32> = u_xlat0;
  vs_TEXCOORD4 = ((vec3<f32>(x_50.x, x_50.y, x_50.z) * vec3<f32>(x_52.w, x_52.w, x_52.w)) + vec3<f32>(x_55.x, x_55.y, x_55.z));
  let x_58 : vec4<f32> = u_xlat1;
  let x_61 : vec4<f32> = x_17.unity_MatrixVP[1i];
  u_xlat0 = (vec4<f32>(x_58.y, x_58.y, x_58.y, x_58.y) * x_61);
  let x_64 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_65 : vec4<f32> = u_xlat1;
  let x_68 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_64 * vec4<f32>(x_65.x, x_65.x, x_65.x, x_65.x)) + x_68);
  let x_71 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_72 : vec4<f32> = u_xlat1;
  let x_75 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_71 * vec4<f32>(x_72.z, x_72.z, x_72.z, x_72.z)) + x_75);
  let x_84 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_85 : vec4<f32> = u_xlat1;
  let x_88 : vec4<f32> = u_xlat0;
  gl_Position = ((x_84 * vec4<f32>(x_85.w, x_85.w, x_85.w, x_85.w)) + x_88);
  let x_96 : vec4<f32> = in_TEXCOORD0;
  let x_100 : vec4<f32> = x_17.x_MainTex_ST;
  let x_104 : vec4<f32> = x_17.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_96.x, x_96.y) * vec2<f32>(x_100.x, x_100.y)) + vec2<f32>(x_104.z, x_104.w));
  let x_109 : vec3<f32> = in_NORMAL0;
  let x_111 : vec4<f32> = x_17.unity_WorldToObject[0i];
  u_xlat0.y = dot(x_109, vec3<f32>(x_111.x, x_111.y, x_111.z));
  let x_116 : vec3<f32> = in_NORMAL0;
  let x_118 : vec4<f32> = x_17.unity_WorldToObject[1i];
  u_xlat0.z = dot(x_116, vec3<f32>(x_118.x, x_118.y, x_118.z));
  let x_123 : vec3<f32> = in_NORMAL0;
  let x_125 : vec4<f32> = x_17.unity_WorldToObject[2i];
  u_xlat0.x = dot(x_123, vec3<f32>(x_125.x, x_125.y, x_125.z));
  let x_131 : vec4<f32> = u_xlat0;
  let x_133 : vec4<f32> = u_xlat0;
  u_xlat9 = dot(vec3<f32>(x_131.x, x_131.y, x_131.z), vec3<f32>(x_133.x, x_133.y, x_133.z));
  let x_136 : f32 = u_xlat9;
  u_xlat9 = inverseSqrt(x_136);
  let x_138 : f32 = u_xlat9;
  let x_140 : vec4<f32> = u_xlat0;
  let x_142 : vec3<f32> = (vec3<f32>(x_138, x_138, x_138) * vec3<f32>(x_140.x, x_140.y, x_140.z));
  let x_143 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_142.x, x_142.y, x_142.z, x_143.w);
  let x_146 : vec4<f32> = in_TANGENT0;
  let x_149 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  let x_151 : vec3<f32> = (vec3<f32>(x_146.y, x_146.y, x_146.y) * vec3<f32>(x_149.y, x_149.z, x_149.x));
  let x_152 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_151.x, x_151.y, x_151.z, x_152.w);
  let x_155 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_157 : vec4<f32> = in_TANGENT0;
  let x_160 : vec4<f32> = u_xlat1;
  let x_162 : vec3<f32> = ((vec3<f32>(x_155.y, x_155.z, x_155.x) * vec3<f32>(x_157.x, x_157.x, x_157.x)) + vec3<f32>(x_160.x, x_160.y, x_160.z));
  let x_163 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_162.x, x_162.y, x_162.z, x_163.w);
  let x_166 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_168 : vec4<f32> = in_TANGENT0;
  let x_171 : vec4<f32> = u_xlat1;
  let x_173 : vec3<f32> = ((vec3<f32>(x_166.y, x_166.z, x_166.x) * vec3<f32>(x_168.z, x_168.z, x_168.z)) + vec3<f32>(x_171.x, x_171.y, x_171.z));
  let x_174 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_173.x, x_173.y, x_173.z, x_174.w);
  let x_176 : vec4<f32> = u_xlat1;
  let x_178 : vec4<f32> = u_xlat1;
  u_xlat9 = dot(vec3<f32>(x_176.x, x_176.y, x_176.z), vec3<f32>(x_178.x, x_178.y, x_178.z));
  let x_181 : f32 = u_xlat9;
  u_xlat9 = inverseSqrt(x_181);
  let x_183 : f32 = u_xlat9;
  let x_185 : vec4<f32> = u_xlat1;
  let x_187 : vec3<f32> = (vec3<f32>(x_183, x_183, x_183) * vec3<f32>(x_185.x, x_185.y, x_185.z));
  let x_188 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_187.x, x_187.y, x_187.z, x_188.w);
  let x_192 : vec4<f32> = u_xlat0;
  let x_194 : vec4<f32> = u_xlat1;
  u_xlat2 = (vec3<f32>(x_192.x, x_192.y, x_192.z) * vec3<f32>(x_194.x, x_194.y, x_194.z));
  let x_197 : vec4<f32> = u_xlat0;
  let x_199 : vec4<f32> = u_xlat1;
  let x_202 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_197.z, x_197.x, x_197.y) * vec3<f32>(x_199.y, x_199.z, x_199.x)) + -(x_202));
  let x_208 : f32 = in_TANGENT0.w;
  let x_211 : f32 = x_17.unity_WorldTransformParams.w;
  u_xlat9 = (x_208 * x_211);
  let x_213 : f32 = u_xlat9;
  let x_215 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_213, x_213, x_213) * x_215);
  let x_219 : f32 = u_xlat2.x;
  vs_TEXCOORD1.y = x_219;
  let x_223 : f32 = u_xlat1.z;
  vs_TEXCOORD1.x = x_223;
  let x_226 : f32 = u_xlat0.y;
  vs_TEXCOORD1.z = x_226;
  let x_230 : f32 = u_xlat1.x;
  vs_TEXCOORD2.x = x_230;
  let x_234 : f32 = u_xlat1.y;
  vs_TEXCOORD3.x = x_234;
  let x_237 : f32 = u_xlat0.z;
  vs_TEXCOORD2.z = x_237;
  let x_240 : f32 = u_xlat0.x;
  vs_TEXCOORD3.z = x_240;
  let x_243 : f32 = u_xlat2.y;
  vs_TEXCOORD2.y = x_243;
  let x_246 : f32 = u_xlat2.z;
  vs_TEXCOORD3.y = x_246;
  vs_TEXCOORD6 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @location(4)
  vs_TEXCOORD4_1 : vec3<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec3<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(1) in_TANGENT0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TANGENT0 = in_TANGENT0_param;
  main_1();
  return main_out(vs_TEXCOORD4, gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3);
}

