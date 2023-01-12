struct VGlobals {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  unity_FogParams : vec4<f32>,
  unity_LightmapST : vec4<f32>,
  unity_Lightmap_ST : vec4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD1 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_19 : VGlobals;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> in_POSITION0 : vec3<f32>;

var<private> vs_TEXCOORD3 : f32;

var<private> vs_TEXCOORD2 : vec2<f32>;

var<private> in_TEXCOORD0 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec3<f32> = in_TEXCOORD1;
  let x_24 : vec4<f32> = x_19.unity_LightmapST;
  let x_28 : vec4<f32> = x_19.unity_LightmapST;
  vs_TEXCOORD0 = ((vec2<f32>(x_13.x, x_13.y) * vec2<f32>(x_24.x, x_24.y)) + vec2<f32>(x_28.z, x_28.w));
  let x_33 : vec3<f32> = in_TEXCOORD1;
  let x_37 : vec4<f32> = x_19.unity_Lightmap_ST;
  let x_41 : vec4<f32> = x_19.unity_Lightmap_ST;
  vs_TEXCOORD1 = ((vec2<f32>(x_33.x, x_33.y) * vec2<f32>(x_37.x, x_37.y)) + vec2<f32>(x_41.z, x_41.w));
  let x_47 : vec3<f32> = in_POSITION0;
  let x_52 : vec4<f32> = x_19.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_47.y, x_47.y, x_47.y, x_47.y) * x_52);
  let x_55 : vec4<f32> = x_19.unity_ObjectToWorld[0i];
  let x_56 : vec3<f32> = in_POSITION0;
  let x_59 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_55 * vec4<f32>(x_56.x, x_56.x, x_56.x, x_56.x)) + x_59);
  let x_63 : vec4<f32> = x_19.unity_ObjectToWorld[2i];
  let x_64 : vec3<f32> = in_POSITION0;
  let x_67 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_63 * vec4<f32>(x_64.z, x_64.z, x_64.z, x_64.z)) + x_67);
  let x_69 : vec4<f32> = u_xlat0;
  let x_72 : vec4<f32> = x_19.unity_ObjectToWorld[3i];
  u_xlat0 = (x_69 + x_72);
  let x_75 : vec4<f32> = u_xlat0;
  let x_78 : vec4<f32> = x_19.unity_MatrixV[1i];
  let x_80 : vec3<f32> = (vec3<f32>(x_75.y, x_75.y, x_75.y) * vec3<f32>(x_78.x, x_78.y, x_78.z));
  let x_81 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_80.x, x_80.y, x_80.z, x_81.w);
  let x_84 : vec4<f32> = x_19.unity_MatrixV[0i];
  let x_86 : vec4<f32> = u_xlat0;
  let x_89 : vec4<f32> = u_xlat1;
  let x_91 : vec3<f32> = ((vec3<f32>(x_84.x, x_84.y, x_84.z) * vec3<f32>(x_86.x, x_86.x, x_86.x)) + vec3<f32>(x_89.x, x_89.y, x_89.z));
  let x_92 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_91.x, x_91.y, x_91.z, x_92.w);
  let x_95 : vec4<f32> = x_19.unity_MatrixV[2i];
  let x_97 : vec4<f32> = u_xlat0;
  let x_100 : vec4<f32> = u_xlat1;
  let x_102 : vec3<f32> = ((vec3<f32>(x_95.x, x_95.y, x_95.z) * vec3<f32>(x_97.z, x_97.z, x_97.z)) + vec3<f32>(x_100.x, x_100.y, x_100.z));
  let x_103 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_102.x, x_102.y, x_102.z, x_103.w);
  let x_106 : vec4<f32> = x_19.unity_MatrixV[3i];
  let x_108 : vec4<f32> = u_xlat0;
  let x_111 : vec4<f32> = u_xlat1;
  let x_113 : vec3<f32> = ((vec3<f32>(x_106.x, x_106.y, x_106.z) * vec3<f32>(x_108.w, x_108.w, x_108.w)) + vec3<f32>(x_111.x, x_111.y, x_111.z));
  let x_114 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_113.x, x_113.y, x_113.z, x_114.w);
  let x_116 : vec4<f32> = u_xlat1;
  let x_118 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_116.x, x_116.y, x_116.z), vec3<f32>(x_118.x, x_118.y, x_118.z));
  let x_126 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_126);
  let x_130 : f32 = u_xlat1.x;
  let x_133 : f32 = x_19.unity_FogParams.x;
  u_xlat1.x = (x_130 * x_133);
  let x_137 : f32 = u_xlat1.x;
  let x_139 : f32 = u_xlat1.x;
  u_xlat1.x = (x_137 * -(x_139));
  let x_146 : f32 = u_xlat1.x;
  vs_TEXCOORD3 = exp2(x_146);
  let x_150 : vec3<f32> = in_TEXCOORD0;
  let x_154 : vec4<f32> = x_19.x_MainTex_ST;
  let x_158 : vec4<f32> = x_19.x_MainTex_ST;
  vs_TEXCOORD2 = ((vec2<f32>(x_150.x, x_150.y) * vec2<f32>(x_154.x, x_154.y)) + vec2<f32>(x_158.z, x_158.w));
  let x_161 : vec4<f32> = u_xlat0;
  let x_164 : vec4<f32> = x_19.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_161.y, x_161.y, x_161.y, x_161.y) * x_164);
  let x_167 : vec4<f32> = x_19.unity_MatrixVP[0i];
  let x_168 : vec4<f32> = u_xlat0;
  let x_171 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_167 * vec4<f32>(x_168.x, x_168.x, x_168.x, x_168.x)) + x_171);
  let x_174 : vec4<f32> = x_19.unity_MatrixVP[2i];
  let x_175 : vec4<f32> = u_xlat0;
  let x_178 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_174 * vec4<f32>(x_175.z, x_175.z, x_175.z, x_175.z)) + x_178);
  let x_186 : vec4<f32> = x_19.unity_MatrixVP[3i];
  let x_187 : vec4<f32> = u_xlat0;
  let x_190 : vec4<f32> = u_xlat1;
  gl_Position = ((x_186 * vec4<f32>(x_187.w, x_187.w, x_187.w, x_187.w)) + x_190);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(2)
  vs_TEXCOORD3_1 : f32,
  @location(1)
  vs_TEXCOORD2_1 : vec2<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@location(1) in_TEXCOORD1_param : vec3<f32>, @location(0) in_POSITION0_param : vec3<f32>, @location(2) in_TEXCOORD0_param : vec3<f32>) -> main_out {
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(vs_TEXCOORD0, vs_TEXCOORD3, vs_TEXCOORD2, gl_Position);
}

