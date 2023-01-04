struct VGlobals {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_NonJitteredVP : mat4x4<f32>,
  x_PreviousVP : mat4x4<f32>,
  x_PreviousM : mat4x4<f32>,
  x_HasLastPositionData : i32,
  x_MotionVectorDepthBias : f32,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(0) @binding(1) var<uniform> x_18 : VGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> in_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_23 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_23);
  let x_26 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_27 : vec4<f32> = in_POSITION0;
  let x_30 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_26 * vec4<f32>(x_27.x, x_27.x, x_27.x, x_27.x)) + x_30);
  let x_34 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_35 : vec4<f32> = in_POSITION0;
  let x_38 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_34 * vec4<f32>(x_35.z, x_35.z, x_35.z, x_35.z)) + x_38);
  let x_43 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  let x_44 : vec4<f32> = in_POSITION0;
  let x_47 : vec4<f32> = u_xlat0;
  u_xlat1 = ((x_43 * vec4<f32>(x_44.w, x_44.w, x_44.w, x_44.w)) + x_47);
  let x_49 : vec4<f32> = u_xlat0;
  let x_51 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  u_xlat0 = (x_49 + x_51);
  let x_54 : vec4<f32> = u_xlat1;
  let x_57 : vec4<f32> = x_18.x_NonJitteredVP[1i];
  u_xlat2 = (vec4<f32>(x_54.y, x_54.y, x_54.y, x_54.y) * x_57);
  let x_60 : vec4<f32> = x_18.x_NonJitteredVP[0i];
  let x_61 : vec4<f32> = u_xlat1;
  let x_64 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_60 * vec4<f32>(x_61.x, x_61.x, x_61.x, x_61.x)) + x_64);
  let x_67 : vec4<f32> = x_18.x_NonJitteredVP[2i];
  let x_68 : vec4<f32> = u_xlat1;
  let x_71 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_67 * vec4<f32>(x_68.z, x_68.z, x_68.z, x_68.z)) + x_71);
  let x_76 : vec4<f32> = x_18.x_NonJitteredVP[3i];
  let x_77 : vec4<f32> = u_xlat1;
  let x_80 : vec4<f32> = u_xlat2;
  vs_TEXCOORD0 = ((x_76 * vec4<f32>(x_77.w, x_77.w, x_77.w, x_77.w)) + x_80);
  let x_85 : vec3<f32> = in_TEXCOORD4;
  let x_86 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_85.x, x_85.y, x_85.z, x_86.w);
  u_xlat1.w = 1.0f;
  let x_96 : i32 = x_18.x_HasLastPositionData;
  let x_98 : bool = (x_96 != 0i);
  let x_99 : vec4<f32> = u_xlat1;
  let x_100 : vec4<f32> = in_POSITION0;
  u_xlat1 = select(x_100, x_99, vec4<bool>(x_98, x_98, x_98, x_98));
  let x_104 : vec4<f32> = u_xlat1;
  let x_108 : vec4<f32> = x_18.x_PreviousM[1i];
  u_xlat2 = (vec4<f32>(x_104.y, x_104.y, x_104.y, x_104.y) * x_108);
  let x_111 : vec4<f32> = x_18.x_PreviousM[0i];
  let x_112 : vec4<f32> = u_xlat1;
  let x_115 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_111 * vec4<f32>(x_112.x, x_112.x, x_112.x, x_112.x)) + x_115);
  let x_118 : vec4<f32> = x_18.x_PreviousM[2i];
  let x_119 : vec4<f32> = u_xlat1;
  let x_122 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_118 * vec4<f32>(x_119.z, x_119.z, x_119.z, x_119.z)) + x_122);
  let x_125 : vec4<f32> = x_18.x_PreviousM[3i];
  let x_126 : vec4<f32> = u_xlat1;
  let x_129 : vec4<f32> = u_xlat2;
  u_xlat1 = ((x_125 * vec4<f32>(x_126.w, x_126.w, x_126.w, x_126.w)) + x_129);
  let x_131 : vec4<f32> = u_xlat1;
  let x_134 : vec4<f32> = x_18.x_PreviousVP[1i];
  u_xlat2 = (vec4<f32>(x_131.y, x_131.y, x_131.y, x_131.y) * x_134);
  let x_137 : vec4<f32> = x_18.x_PreviousVP[0i];
  let x_138 : vec4<f32> = u_xlat1;
  let x_141 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_137 * vec4<f32>(x_138.x, x_138.x, x_138.x, x_138.x)) + x_141);
  let x_144 : vec4<f32> = x_18.x_PreviousVP[2i];
  let x_145 : vec4<f32> = u_xlat1;
  let x_148 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_144 * vec4<f32>(x_145.z, x_145.z, x_145.z, x_145.z)) + x_148);
  let x_152 : vec4<f32> = x_18.x_PreviousVP[3i];
  let x_153 : vec4<f32> = u_xlat1;
  let x_156 : vec4<f32> = u_xlat2;
  vs_TEXCOORD1 = ((x_152 * vec4<f32>(x_153.w, x_153.w, x_153.w, x_153.w)) + x_156);
  let x_158 : vec4<f32> = u_xlat0;
  let x_161 : vec4<f32> = x_18.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_158.y, x_158.y, x_158.y, x_158.y) * x_161);
  let x_164 : vec4<f32> = x_18.unity_MatrixVP[0i];
  let x_165 : vec4<f32> = u_xlat0;
  let x_168 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_164 * vec4<f32>(x_165.x, x_165.x, x_165.x, x_165.x)) + x_168);
  let x_171 : vec4<f32> = x_18.unity_MatrixVP[2i];
  let x_172 : vec4<f32> = u_xlat0;
  let x_175 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_171 * vec4<f32>(x_172.z, x_172.z, x_172.z, x_172.z)) + x_175);
  let x_178 : vec4<f32> = x_18.unity_MatrixVP[3i];
  let x_179 : vec4<f32> = u_xlat0;
  let x_182 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_178 * vec4<f32>(x_179.w, x_179.w, x_179.w, x_179.w)) + x_182);
  let x_192 : f32 = x_18.x_MotionVectorDepthBias;
  let x_195 : f32 = u_xlat0.w;
  let x_199 : f32 = u_xlat0.z;
  gl_Position.z = ((-(x_192) * x_195) + x_199);
  let x_203 : vec4<f32> = u_xlat0;
  let x_204 : vec3<f32> = vec3<f32>(x_203.x, x_203.y, x_203.w);
  let x_206 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_204.x, x_204.y, x_206.z, x_204.z);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec4<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(1) in_TEXCOORD4_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD4 = in_TEXCOORD4_param;
  main_1();
  return main_out(vs_TEXCOORD0, vs_TEXCOORD1, gl_Position);
}

