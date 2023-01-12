struct VGlobals {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  unity_LightmapST : vec4<f32>,
  unity_DynamicLightmapST : vec4<f32>,
  unity_MetaVertexControl : vec4<u32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

var<private> in_TEXCOORD1 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_35 : VGlobals;

var<private> in_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlatb0 : bool;
  var u_xlat0 : vec4<f32>;
  var x_58 : vec3<f32>;
  var u_xlatb6 : bool;
  var u_xlat1 : vec4<f32>;
  var x_95 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_18 : f32 = in_POSITION0.z;
  u_xlatb0 = (0.0f < x_18);
  let x_22 : bool = u_xlatb0;
  u_xlat0.z = select(0.0f, 0.0001f, x_22);
  let x_29 : vec4<f32> = in_TEXCOORD1;
  let x_40 : vec4<f32> = x_35.unity_LightmapST;
  let x_44 : vec4<f32> = x_35.unity_LightmapST;
  let x_46 : vec2<f32> = ((vec2<f32>(x_29.x, x_29.y) * vec2<f32>(x_40.x, x_40.y)) + vec2<f32>(x_44.z, x_44.w));
  let x_47 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_46.x, x_46.y, x_47.z, x_47.w);
  let x_54 : u32 = x_35.unity_MetaVertexControl.x;
  if ((x_54 != 0u)) {
    let x_61 : vec4<f32> = u_xlat0;
    x_58 = vec3<f32>(x_61.x, x_61.y, x_61.z);
  } else {
    let x_64 : vec4<f32> = in_POSITION0;
    x_58 = vec3<f32>(x_64.x, x_64.y, x_64.z);
  }
  let x_66 : vec3<f32> = x_58;
  let x_67 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_66.x, x_66.y, x_66.z, x_67.w);
  let x_71 : f32 = u_xlat0.z;
  u_xlatb6 = (0.0f < x_71);
  let x_74 : bool = u_xlatb6;
  u_xlat1.z = select(0.0f, 0.0001f, x_74);
  let x_78 : vec4<f32> = in_TEXCOORD2;
  let x_82 : vec4<f32> = x_35.unity_DynamicLightmapST;
  let x_86 : vec4<f32> = x_35.unity_DynamicLightmapST;
  let x_88 : vec2<f32> = ((vec2<f32>(x_78.x, x_78.y) * vec2<f32>(x_82.x, x_82.y)) + vec2<f32>(x_86.z, x_86.w));
  let x_89 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_88.x, x_88.y, x_89.z, x_89.w);
  let x_93 : u32 = x_35.unity_MetaVertexControl.y;
  if ((x_93 != 0u)) {
    let x_98 : vec4<f32> = u_xlat1;
    x_95 = vec3<f32>(x_98.x, x_98.y, x_98.z);
  } else {
    let x_101 : vec4<f32> = u_xlat0;
    x_95 = vec3<f32>(x_101.x, x_101.y, x_101.z);
  }
  let x_103 : vec3<f32> = x_95;
  let x_104 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_103.x, x_103.y, x_103.z, x_104.w);
  let x_106 : vec4<f32> = u_xlat0;
  let x_110 : vec4<f32> = x_35.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_106.y, x_106.y, x_106.y, x_106.y) * x_110);
  let x_114 : vec4<f32> = x_35.unity_MatrixVP[0i];
  let x_115 : vec4<f32> = u_xlat0;
  let x_118 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_114 * vec4<f32>(x_115.x, x_115.x, x_115.x, x_115.x)) + x_118);
  let x_121 : vec4<f32> = x_35.unity_MatrixVP[2i];
  let x_122 : vec4<f32> = u_xlat0;
  let x_125 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_121 * vec4<f32>(x_122.z, x_122.z, x_122.z, x_122.z)) + x_125);
  let x_131 : vec4<f32> = u_xlat0;
  let x_133 : vec4<f32> = x_35.unity_MatrixVP[3i];
  gl_Position = (x_131 + x_133);
  let x_140 : vec4<f32> = in_TEXCOORD0;
  let x_144 : vec4<f32> = x_35.x_MainTex_ST;
  let x_148 : vec4<f32> = x_35.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_140.x, x_140.y) * vec2<f32>(x_144.x, x_144.y)) + vec2<f32>(x_148.z, x_148.w));
  let x_151 : vec4<f32> = in_POSITION0;
  let x_154 : vec4<f32> = x_35.unity_ObjectToWorld[1i];
  let x_156 : vec3<f32> = (vec3<f32>(x_151.y, x_151.y, x_151.y) * vec3<f32>(x_154.x, x_154.y, x_154.z));
  let x_157 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_156.x, x_156.y, x_156.z, x_157.w);
  let x_160 : vec4<f32> = x_35.unity_ObjectToWorld[0i];
  let x_162 : vec4<f32> = in_POSITION0;
  let x_165 : vec4<f32> = u_xlat0;
  let x_167 : vec3<f32> = ((vec3<f32>(x_160.x, x_160.y, x_160.z) * vec3<f32>(x_162.x, x_162.x, x_162.x)) + vec3<f32>(x_165.x, x_165.y, x_165.z));
  let x_168 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_167.x, x_167.y, x_167.z, x_168.w);
  let x_171 : vec4<f32> = x_35.unity_ObjectToWorld[2i];
  let x_173 : vec4<f32> = in_POSITION0;
  let x_176 : vec4<f32> = u_xlat0;
  let x_178 : vec3<f32> = ((vec3<f32>(x_171.x, x_171.y, x_171.z) * vec3<f32>(x_173.z, x_173.z, x_173.z)) + vec3<f32>(x_176.x, x_176.y, x_176.z));
  let x_179 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_178.x, x_178.y, x_178.z, x_179.w);
  let x_184 : vec4<f32> = x_35.unity_ObjectToWorld[3i];
  let x_186 : vec4<f32> = in_POSITION0;
  let x_189 : vec4<f32> = u_xlat0;
  vs_TEXCOORD1 = ((vec3<f32>(x_184.x, x_184.y, x_184.z) * vec3<f32>(x_186.w, x_186.w, x_186.w)) + vec3<f32>(x_189.x, x_189.y, x_189.z));
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TEXCOORD1_param : vec4<f32>, @location(3) in_TEXCOORD2_param : vec4<f32>, @location(1) in_TEXCOORD0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_TEXCOORD2 = in_TEXCOORD2_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0);
}

