struct VGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_17 : VGlobals;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat10 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_23 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_23);
  let x_27 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_28 : vec4<f32> = in_POSITION0;
  let x_31 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_27 * vec4<f32>(x_28.x, x_28.x, x_28.x, x_28.x)) + x_31);
  let x_35 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_36 : vec4<f32> = in_POSITION0;
  let x_39 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_35 * vec4<f32>(x_36.z, x_36.z, x_36.z, x_36.z)) + x_39);
  let x_42 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  u_xlat1 = (x_42 + x_45);
  let x_51 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  let x_53 : vec4<f32> = in_POSITION0;
  let x_56 : vec4<f32> = u_xlat0;
  vs_TEXCOORD2 = ((vec3<f32>(x_51.x, x_51.y, x_51.z) * vec3<f32>(x_53.w, x_53.w, x_53.w)) + vec3<f32>(x_56.x, x_56.y, x_56.z));
  let x_59 : vec4<f32> = u_xlat1;
  let x_63 : vec4<f32> = x_17.unity_MatrixVP[1i];
  u_xlat0 = (vec4<f32>(x_59.y, x_59.y, x_59.y, x_59.y) * x_63);
  let x_66 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_67 : vec4<f32> = u_xlat1;
  let x_70 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_66 * vec4<f32>(x_67.x, x_67.x, x_67.x, x_67.x)) + x_70);
  let x_73 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_74 : vec4<f32> = u_xlat1;
  let x_77 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_73 * vec4<f32>(x_74.z, x_74.z, x_74.z, x_74.z)) + x_77);
  let x_80 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_81 : vec4<f32> = u_xlat1;
  let x_84 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_80 * vec4<f32>(x_81.w, x_81.w, x_81.w, x_81.w)) + x_84);
  let x_92 : vec4<f32> = u_xlat0;
  gl_Position = x_92;
  let x_99 : vec4<f32> = in_TEXCOORD0;
  let x_103 : vec4<f32> = x_17.x_MainTex_ST;
  let x_107 : vec4<f32> = x_17.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_99.x, x_99.y) * vec2<f32>(x_103.x, x_103.y)) + vec2<f32>(x_107.z, x_107.w));
  let x_112 : vec3<f32> = in_NORMAL0;
  let x_115 : vec4<f32> = x_17.unity_WorldToObject[0i];
  u_xlat1.x = dot(x_112, vec3<f32>(x_115.x, x_115.y, x_115.z));
  let x_121 : vec3<f32> = in_NORMAL0;
  let x_123 : vec4<f32> = x_17.unity_WorldToObject[1i];
  u_xlat1.y = dot(x_121, vec3<f32>(x_123.x, x_123.y, x_123.z));
  let x_127 : vec3<f32> = in_NORMAL0;
  let x_129 : vec4<f32> = x_17.unity_WorldToObject[2i];
  u_xlat1.z = dot(x_127, vec3<f32>(x_129.x, x_129.y, x_129.z));
  let x_135 : vec4<f32> = u_xlat1;
  let x_137 : vec4<f32> = u_xlat1;
  u_xlat10 = dot(vec3<f32>(x_135.x, x_135.y, x_135.z), vec3<f32>(x_137.x, x_137.y, x_137.z));
  let x_140 : f32 = u_xlat10;
  u_xlat10 = inverseSqrt(x_140);
  let x_142 : f32 = u_xlat10;
  let x_144 : vec4<f32> = u_xlat1;
  let x_146 : vec3<f32> = (vec3<f32>(x_142, x_142, x_142) * vec3<f32>(x_144.x, x_144.y, x_144.z));
  let x_147 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_146.x, x_146.y, x_146.z, x_147.w);
  let x_150 : vec4<f32> = u_xlat1;
  vs_TEXCOORD1 = vec3<f32>(x_150.x, x_150.y, x_150.z);
  let x_153 : f32 = u_xlat1.y;
  let x_155 : f32 = u_xlat1.y;
  u_xlat10 = (x_153 * x_155);
  let x_158 : f32 = u_xlat1.x;
  let x_160 : f32 = u_xlat1.x;
  let x_162 : f32 = u_xlat10;
  u_xlat10 = ((x_158 * x_160) + -(x_162));
  let x_166 : vec4<f32> = u_xlat1;
  let x_168 : vec4<f32> = u_xlat1;
  u_xlat2 = (vec4<f32>(x_166.y, x_166.z, x_166.z, x_166.x) * vec4<f32>(x_168.x, x_168.y, x_168.z, x_168.z));
  let x_172 : vec4<f32> = x_17.unity_SHBr;
  let x_173 : vec4<f32> = u_xlat2;
  u_xlat1.x = dot(x_172, x_173);
  let x_177 : vec4<f32> = x_17.unity_SHBg;
  let x_178 : vec4<f32> = u_xlat2;
  u_xlat1.y = dot(x_177, x_178);
  let x_182 : vec4<f32> = x_17.unity_SHBb;
  let x_183 : vec4<f32> = u_xlat2;
  u_xlat1.z = dot(x_182, x_183);
  let x_189 : vec4<f32> = x_17.unity_SHC;
  let x_191 : f32 = u_xlat10;
  let x_194 : vec4<f32> = u_xlat1;
  vs_TEXCOORD3 = ((vec3<f32>(x_189.x, x_189.y, x_189.z) * vec3<f32>(x_191, x_191, x_191)) + vec3<f32>(x_194.x, x_194.y, x_194.z));
  let x_198 : f32 = u_xlat0.y;
  let x_201 : f32 = x_17.x_ProjectionParams.x;
  u_xlat0.y = (x_198 * x_201);
  let x_204 : vec4<f32> = u_xlat0;
  let x_208 : vec3<f32> = (vec3<f32>(x_204.x, x_204.w, x_204.y) * vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_209 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_208.x, x_209.y, x_208.y, x_208.z);
  let x_212 : vec4<f32> = u_xlat0;
  let x_213 : vec2<f32> = vec2<f32>(x_212.z, x_212.w);
  let x_214 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_214.x, x_214.y, x_213.x, x_213.y);
  let x_216 : vec4<f32> = u_xlat1;
  let x_218 : vec4<f32> = u_xlat1;
  let x_220 : vec2<f32> = (vec2<f32>(x_216.z, x_216.z) + vec2<f32>(x_218.x, x_218.w));
  let x_221 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_220.x, x_220.y, x_221.z, x_221.w);
  vs_TEXCOORD6 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @location(2)
  vs_TEXCOORD2_1 : vec3<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec3<f32>,
  @location(4)
  vs_TEXCOORD5_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(vs_TEXCOORD2, gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD3, vs_TEXCOORD5);
}

