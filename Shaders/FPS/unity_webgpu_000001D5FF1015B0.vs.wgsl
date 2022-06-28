struct VGlobals {
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

@group(0) @binding(6) var<uniform> x_30 : VGlobals;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat6 : f32;

var<private> vs_TEXCOORD0 : vec3<f32>;

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
  let x_97 : vec4<f32> = x_30.unity_MatrixVP[3i];
  let x_98 : vec4<f32> = u_xlat1;
  let x_101 : vec4<f32> = u_xlat0;
  gl_Position = ((x_97 * vec4<f32>(x_98.w, x_98.w, x_98.w, x_98.w)) + x_101);
  let x_105 : vec3<f32> = in_NORMAL0;
  let x_108 : vec4<f32> = x_30.unity_WorldToObject[0i];
  u_xlat0.x = dot(x_105, vec3<f32>(x_108.x, x_108.y, x_108.z));
  let x_114 : vec3<f32> = in_NORMAL0;
  let x_116 : vec4<f32> = x_30.unity_WorldToObject[1i];
  u_xlat0.y = dot(x_114, vec3<f32>(x_116.x, x_116.y, x_116.z));
  let x_120 : vec3<f32> = in_NORMAL0;
  let x_122 : vec4<f32> = x_30.unity_WorldToObject[2i];
  u_xlat0.z = dot(x_120, vec3<f32>(x_122.x, x_122.y, x_122.z));
  let x_128 : vec4<f32> = u_xlat0;
  let x_130 : vec4<f32> = u_xlat0;
  u_xlat6 = dot(vec3<f32>(x_128.x, x_128.y, x_128.z), vec3<f32>(x_130.x, x_130.y, x_130.z));
  let x_133 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_133);
  let x_135 : f32 = u_xlat6;
  let x_137 : vec4<f32> = u_xlat0;
  let x_139 : vec3<f32> = (vec3<f32>(x_135, x_135, x_135) * vec3<f32>(x_137.x, x_137.y, x_137.z));
  let x_140 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_139.x, x_139.y, x_139.z, x_140.w);
  let x_143 : vec4<f32> = u_xlat0;
  vs_TEXCOORD0 = vec3<f32>(x_143.x, x_143.y, x_143.z);
  let x_146 : f32 = u_xlat0.y;
  let x_148 : f32 = u_xlat0.y;
  u_xlat6 = (x_146 * x_148);
  let x_151 : f32 = u_xlat0.x;
  let x_153 : f32 = u_xlat0.x;
  let x_155 : f32 = u_xlat6;
  u_xlat6 = ((x_151 * x_153) + -(x_155));
  let x_158 : vec4<f32> = u_xlat0;
  let x_160 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec4<f32>(x_158.y, x_158.z, x_158.z, x_158.x) * vec4<f32>(x_160.x, x_160.y, x_160.z, x_160.z));
  let x_164 : vec4<f32> = x_30.unity_SHBr;
  let x_165 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(x_164, x_165);
  let x_169 : vec4<f32> = x_30.unity_SHBg;
  let x_170 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(x_169, x_170);
  let x_174 : vec4<f32> = x_30.unity_SHBb;
  let x_175 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(x_174, x_175);
  let x_180 : vec4<f32> = x_30.unity_SHC;
  let x_182 : f32 = u_xlat6;
  let x_185 : vec4<f32> = u_xlat0;
  vs_TEXCOORD2 = ((vec3<f32>(x_180.x, x_180.y, x_180.z) * vec3<f32>(x_182, x_182, x_182)) + vec3<f32>(x_185.x, x_185.y, x_185.z));
  vs_TEXCOORD4 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
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
}

@vertex
fn main(@location(1) in_NORMAL0_param : vec3<f32>, @location(0) in_POSITION0_param : vec4<f32>) -> main_out {
  in_NORMAL0 = in_NORMAL0_param;
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(vs_TEXCOORD1, gl_Position, vs_TEXCOORD0, vs_TEXCOORD2);
}

