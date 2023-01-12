struct VGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_CameraInvProjection : mat4x4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_17 : VGlobals;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> in_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
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
  u_xlat0 = ((x_66 * vec4<f32>(x_67.w, x_67.w, x_67.w, x_67.w)) + x_70);
  let x_78 : vec4<f32> = u_xlat0;
  gl_Position = x_78;
  let x_83 : f32 = u_xlat0.y;
  let x_87 : f32 = x_17.x_ProjectionParams.x;
  u_xlat0.y = (x_83 * x_87);
  let x_91 : vec4<f32> = u_xlat0;
  let x_95 : vec3<f32> = (vec3<f32>(x_91.x, x_91.w, x_91.y) * vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_96 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_95.x, x_96.y, x_95.y, x_95.z);
  let x_100 : vec4<f32> = u_xlat0;
  let x_103 : vec4<f32> = x_17.unity_CameraInvProjection[1i];
  u_xlat2 = (vec3<f32>(x_100.y, x_100.y, x_100.y) * vec3<f32>(x_103.x, x_103.y, x_103.z));
  let x_107 : vec4<f32> = x_17.unity_CameraInvProjection[0i];
  let x_109 : vec4<f32> = u_xlat0;
  let x_112 : vec3<f32> = u_xlat2;
  let x_113 : vec3<f32> = ((vec3<f32>(x_107.x, x_107.y, x_107.z) * vec3<f32>(x_109.x, x_109.x, x_109.x)) + x_112);
  let x_114 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_113.x, x_113.y, x_113.z, x_114.w);
  let x_118 : vec4<f32> = u_xlat1;
  let x_120 : vec4<f32> = u_xlat1;
  let x_122 : vec2<f32> = (vec2<f32>(x_118.z, x_118.z) + vec2<f32>(x_120.x, x_120.w));
  let x_123 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_123.x, x_123.y, x_122.x, x_122.y);
  let x_127 : vec2<f32> = in_TEXCOORD0;
  let x_128 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_127.x, x_127.y, x_128.z, x_128.w);
  let x_134 : vec3<f32> = in_TEXCOORD1;
  vs_TEXCOORD1 = x_134;
  let x_135 : vec4<f32> = u_xlat0;
  let x_138 : vec4<f32> = x_17.unity_CameraInvProjection[2i];
  let x_141 : vec3<f32> = (vec3<f32>(x_135.x, x_135.y, x_135.z) + -(vec3<f32>(x_138.x, x_138.y, x_138.z)));
  let x_142 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_141.x, x_141.y, x_141.z, x_142.w);
  let x_144 : vec4<f32> = u_xlat0;
  let x_147 : vec4<f32> = x_17.unity_CameraInvProjection[2i];
  let x_149 : vec3<f32> = (vec3<f32>(x_144.x, x_144.y, x_144.z) + vec3<f32>(x_147.x, x_147.y, x_147.z));
  let x_150 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_149.x, x_149.y, x_149.z, x_150.w);
  let x_152 : vec4<f32> = u_xlat0;
  let x_155 : vec4<f32> = x_17.unity_CameraInvProjection[3i];
  let x_157 : vec3<f32> = (vec3<f32>(x_152.x, x_152.y, x_152.z) + vec3<f32>(x_155.x, x_155.y, x_155.z));
  let x_158 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_157.x, x_157.y, x_157.z, x_158.w);
  let x_160 : vec4<f32> = u_xlat1;
  let x_163 : vec4<f32> = x_17.unity_CameraInvProjection[3i];
  let x_165 : vec3<f32> = (vec3<f32>(x_160.x, x_160.y, x_160.z) + vec3<f32>(x_163.x, x_163.y, x_163.z));
  let x_166 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_165.x, x_165.y, x_165.z, x_166.w);
  let x_170 : f32 = u_xlat1.z;
  u_xlat1.w = -(x_170);
  let x_175 : vec4<f32> = u_xlat1;
  vs_TEXCOORD2 = vec3<f32>(x_175.x, x_175.y, x_175.w);
  let x_178 : f32 = u_xlat0.z;
  u_xlat0.w = -(x_178);
  let x_182 : vec4<f32> = u_xlat0;
  vs_TEXCOORD3 = vec3<f32>(x_182.x, x_182.y, x_182.w);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(1) in_TEXCOORD0_param : vec2<f32>, @location(2) in_TEXCOORD1_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0);
}

