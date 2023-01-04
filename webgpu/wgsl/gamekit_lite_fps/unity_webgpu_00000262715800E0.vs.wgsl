struct VGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_LightAsQuad : f32,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(0) @binding(15) var<uniform> x_17 : VGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_22 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_22);
  let x_26 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_27 : vec4<f32> = in_POSITION0;
  let x_30 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_26 * vec4<f32>(x_27.x, x_27.x, x_27.x, x_27.x)) + x_30);
  let x_34 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_35 : vec4<f32> = in_POSITION0;
  let x_38 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_34 * vec4<f32>(x_35.z, x_35.z, x_35.z, x_35.z)) + x_38);
  let x_40 : vec4<f32> = u_xlat0;
  let x_43 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  u_xlat0 = (x_40 + x_43);
  let x_46 : vec4<f32> = u_xlat0;
  let x_49 : vec4<f32> = x_17.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_46.y, x_46.y, x_46.y, x_46.y) * x_49);
  let x_52 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_53 : vec4<f32> = u_xlat0;
  let x_56 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_52 * vec4<f32>(x_53.x, x_53.x, x_53.x, x_53.x)) + x_56);
  let x_59 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_60 : vec4<f32> = u_xlat0;
  let x_63 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_59 * vec4<f32>(x_60.z, x_60.z, x_60.z, x_60.z)) + x_63);
  let x_66 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_67 : vec4<f32> = u_xlat0;
  let x_70 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_66 * vec4<f32>(x_67.w, x_67.w, x_67.w, x_67.w)) + x_70);
  let x_78 : vec4<f32> = u_xlat1;
  gl_Position = x_78;
  let x_83 : f32 = u_xlat1.y;
  let x_87 : f32 = x_17.x_ProjectionParams.x;
  u_xlat1.y = (x_83 * x_87);
  let x_92 : vec4<f32> = u_xlat1;
  let x_96 : vec3<f32> = (vec3<f32>(x_92.x, x_92.w, x_92.y) * vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_97 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_96.x, x_97.y, x_96.y, x_96.z);
  let x_101 : vec4<f32> = u_xlat1;
  let x_102 : vec2<f32> = vec2<f32>(x_101.z, x_101.w);
  let x_103 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_103.x, x_103.y, x_102.x, x_102.y);
  let x_105 : vec4<f32> = u_xlat2;
  let x_107 : vec4<f32> = u_xlat2;
  let x_109 : vec2<f32> = (vec2<f32>(x_105.z, x_105.z) + vec2<f32>(x_107.x, x_107.w));
  let x_110 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_109.x, x_109.y, x_110.z, x_110.w);
  let x_112 : vec4<f32> = u_xlat0;
  let x_115 : vec4<f32> = x_17.unity_MatrixV[1i];
  let x_117 : vec3<f32> = (vec3<f32>(x_112.y, x_112.y, x_112.y) * vec3<f32>(x_115.x, x_115.y, x_115.z));
  let x_118 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_117.x, x_117.y, x_117.z, x_118.w);
  let x_121 : vec4<f32> = x_17.unity_MatrixV[0i];
  let x_123 : vec4<f32> = u_xlat0;
  let x_126 : vec4<f32> = u_xlat1;
  let x_128 : vec3<f32> = ((vec3<f32>(x_121.x, x_121.y, x_121.z) * vec3<f32>(x_123.x, x_123.x, x_123.x)) + vec3<f32>(x_126.x, x_126.y, x_126.z));
  let x_129 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_128.x, x_128.y, x_128.z, x_129.w);
  let x_132 : vec4<f32> = x_17.unity_MatrixV[2i];
  let x_134 : vec4<f32> = u_xlat0;
  let x_137 : vec4<f32> = u_xlat1;
  let x_139 : vec3<f32> = ((vec3<f32>(x_132.x, x_132.y, x_132.z) * vec3<f32>(x_134.z, x_134.z, x_134.z)) + vec3<f32>(x_137.x, x_137.y, x_137.z));
  let x_140 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_139.x, x_139.y, x_139.z, x_140.w);
  let x_143 : vec4<f32> = x_17.unity_MatrixV[3i];
  let x_145 : vec4<f32> = u_xlat0;
  let x_148 : vec4<f32> = u_xlat0;
  let x_150 : vec3<f32> = ((vec3<f32>(x_143.x, x_143.y, x_143.z) * vec3<f32>(x_145.w, x_145.w, x_145.w)) + vec3<f32>(x_148.x, x_148.y, x_148.z));
  let x_151 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_150.x, x_150.y, x_150.z, x_151.w);
  let x_153 : vec4<f32> = u_xlat0;
  let x_158 : vec3<f32> = (vec3<f32>(x_153.x, x_153.y, x_153.z) * vec3<f32>(-1.0f, -1.0f, 1.0f));
  let x_159 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_158.x, x_158.y, x_158.z, x_159.w);
  let x_161 : vec4<f32> = u_xlat0;
  let x_167 : vec3<f32> = in_NORMAL0;
  let x_168 : vec3<f32> = ((-(vec3<f32>(x_161.x, x_161.y, x_161.z)) * vec3<f32>(-1.0f, -1.0f, 1.0f)) + x_167);
  let x_169 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_168.x, x_168.y, x_168.z, x_169.w);
  let x_175 : f32 = x_17.x_LightAsQuad;
  let x_177 : vec4<f32> = u_xlat0;
  let x_180 : vec4<f32> = u_xlat1;
  vs_TEXCOORD1 = ((vec3<f32>(x_175, x_175, x_175) * vec3<f32>(x_177.x, x_177.y, x_177.z)) + vec3<f32>(x_180.x, x_180.y, x_180.z));
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1);
}

