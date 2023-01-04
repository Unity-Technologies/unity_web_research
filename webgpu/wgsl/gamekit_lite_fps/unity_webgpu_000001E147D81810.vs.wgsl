struct VGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> in_POSITION0 : vec4<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(8) var<uniform> x_30 : VGlobals;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat10 : f32;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec3<f32> = in_NORMAL0;
  let x_19 : vec4<f32> = in_POSITION0;
  let x_21 : vec3<f32> = ((x_13 * vec3<f32>(0.01f, 0.01f, 0.01f)) + vec3<f32>(x_19.x, x_19.y, x_19.z));
  let x_22 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_21.x, x_21.y, x_21.z, x_22.w);
  let x_25 : vec4<f32> = u_xlat0;
  let x_36 : vec4<f32> = x_30.unity_ObjectToWorld[1i];
  u_xlat1 = (vec4<f32>(x_25.y, x_25.y, x_25.y, x_25.y) * x_36);
  let x_40 : vec4<f32> = x_30.unity_ObjectToWorld[0i];
  let x_41 : vec4<f32> = u_xlat0;
  let x_44 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_40 * vec4<f32>(x_41.x, x_41.x, x_41.x, x_41.x)) + x_44);
  let x_48 : vec4<f32> = x_30.unity_ObjectToWorld[2i];
  let x_49 : vec4<f32> = u_xlat0;
  let x_52 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_48 * vec4<f32>(x_49.z, x_49.z, x_49.z, x_49.z)) + x_52);
  let x_54 : vec4<f32> = u_xlat0;
  let x_57 : vec4<f32> = x_30.unity_ObjectToWorld[3i];
  u_xlat1 = (x_54 + x_57);
  let x_62 : vec4<f32> = x_30.unity_ObjectToWorld[3i];
  let x_64 : vec4<f32> = in_POSITION0;
  let x_67 : vec4<f32> = u_xlat0;
  vs_TEXCOORD1 = ((vec3<f32>(x_62.x, x_62.y, x_62.z) * vec3<f32>(x_64.w, x_64.w, x_64.w)) + vec3<f32>(x_67.x, x_67.y, x_67.z));
  let x_70 : vec4<f32> = u_xlat1;
  let x_74 : vec4<f32> = x_30.unity_MatrixVP[1i];
  u_xlat0 = (vec4<f32>(x_70.y, x_70.y, x_70.y, x_70.y) * x_74);
  let x_77 : vec4<f32> = x_30.unity_MatrixVP[0i];
  let x_78 : vec4<f32> = u_xlat1;
  let x_81 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_77 * vec4<f32>(x_78.x, x_78.x, x_78.x, x_78.x)) + x_81);
  let x_84 : vec4<f32> = x_30.unity_MatrixVP[2i];
  let x_85 : vec4<f32> = u_xlat1;
  let x_88 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_84 * vec4<f32>(x_85.z, x_85.z, x_85.z, x_85.z)) + x_88);
  let x_91 : vec4<f32> = x_30.unity_MatrixVP[3i];
  let x_92 : vec4<f32> = u_xlat1;
  let x_95 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_91 * vec4<f32>(x_92.w, x_92.w, x_92.w, x_92.w)) + x_95);
  let x_103 : vec4<f32> = u_xlat0;
  gl_Position = x_103;
  let x_106 : vec3<f32> = in_NORMAL0;
  let x_109 : vec4<f32> = x_30.unity_WorldToObject[0i];
  u_xlat1.x = dot(x_106, vec3<f32>(x_109.x, x_109.y, x_109.z));
  let x_115 : vec3<f32> = in_NORMAL0;
  let x_117 : vec4<f32> = x_30.unity_WorldToObject[1i];
  u_xlat1.y = dot(x_115, vec3<f32>(x_117.x, x_117.y, x_117.z));
  let x_121 : vec3<f32> = in_NORMAL0;
  let x_123 : vec4<f32> = x_30.unity_WorldToObject[2i];
  u_xlat1.z = dot(x_121, vec3<f32>(x_123.x, x_123.y, x_123.z));
  let x_129 : vec4<f32> = u_xlat1;
  let x_131 : vec4<f32> = u_xlat1;
  u_xlat10 = dot(vec3<f32>(x_129.x, x_129.y, x_129.z), vec3<f32>(x_131.x, x_131.y, x_131.z));
  let x_134 : f32 = u_xlat10;
  u_xlat10 = inverseSqrt(x_134);
  let x_136 : f32 = u_xlat10;
  let x_138 : vec4<f32> = u_xlat1;
  let x_140 : vec3<f32> = (vec3<f32>(x_136, x_136, x_136) * vec3<f32>(x_138.x, x_138.y, x_138.z));
  let x_141 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_140.x, x_140.y, x_140.z, x_141.w);
  let x_144 : vec4<f32> = u_xlat1;
  vs_TEXCOORD0 = vec3<f32>(x_144.x, x_144.y, x_144.z);
  let x_147 : f32 = u_xlat1.y;
  let x_149 : f32 = u_xlat1.y;
  u_xlat10 = (x_147 * x_149);
  let x_152 : f32 = u_xlat1.x;
  let x_154 : f32 = u_xlat1.x;
  let x_156 : f32 = u_xlat10;
  u_xlat10 = ((x_152 * x_154) + -(x_156));
  let x_160 : vec4<f32> = u_xlat1;
  let x_162 : vec4<f32> = u_xlat1;
  u_xlat2 = (vec4<f32>(x_160.y, x_160.z, x_160.z, x_160.x) * vec4<f32>(x_162.x, x_162.y, x_162.z, x_162.z));
  let x_166 : vec4<f32> = x_30.unity_SHBr;
  let x_167 : vec4<f32> = u_xlat2;
  u_xlat1.x = dot(x_166, x_167);
  let x_171 : vec4<f32> = x_30.unity_SHBg;
  let x_172 : vec4<f32> = u_xlat2;
  u_xlat1.y = dot(x_171, x_172);
  let x_176 : vec4<f32> = x_30.unity_SHBb;
  let x_177 : vec4<f32> = u_xlat2;
  u_xlat1.z = dot(x_176, x_177);
  let x_183 : vec4<f32> = x_30.unity_SHC;
  let x_185 : f32 = u_xlat10;
  let x_188 : vec4<f32> = u_xlat1;
  vs_TEXCOORD2 = ((vec3<f32>(x_183.x, x_183.y, x_183.z) * vec3<f32>(x_185, x_185, x_185)) + vec3<f32>(x_188.x, x_188.y, x_188.z));
  let x_192 : f32 = u_xlat0.y;
  let x_195 : f32 = x_30.x_ProjectionParams.x;
  u_xlat0.y = (x_192 * x_195);
  let x_198 : vec4<f32> = u_xlat0;
  let x_202 : vec3<f32> = (vec3<f32>(x_198.x, x_198.w, x_198.y) * vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_203 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_202.x, x_203.y, x_202.y, x_202.z);
  let x_207 : vec4<f32> = u_xlat0;
  let x_208 : vec2<f32> = vec2<f32>(x_207.z, x_207.w);
  let x_209 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_209.x, x_209.y, x_208.x, x_208.y);
  let x_211 : vec4<f32> = u_xlat1;
  let x_213 : vec4<f32> = u_xlat1;
  let x_215 : vec2<f32> = (vec2<f32>(x_211.z, x_211.z) + vec2<f32>(x_213.x, x_213.w));
  let x_216 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_215.x, x_215.y, x_216.z, x_216.w);
  vs_TEXCOORD5 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec3<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec3<f32>,
  @location(3)
  vs_TEXCOORD4_1 : vec4<f32>,
}

@vertex
fn main(@location(1) in_NORMAL0_param : vec3<f32>, @location(0) in_POSITION0_param : vec4<f32>) -> main_out {
  in_NORMAL0 = in_NORMAL0_param;
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(vs_TEXCOORD1, gl_Position, vs_TEXCOORD0, vs_TEXCOORD2, vs_TEXCOORD4);
}

