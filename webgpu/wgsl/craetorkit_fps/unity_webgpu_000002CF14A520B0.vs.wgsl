struct VGlobals {
  unity_MatrixVP : mat4x4<f32>,
  unity_LightmapST : vec4<f32>,
  unity_DynamicLightmapST : vec4<f32>,
  x_MainTex_ST : vec4<f32>,
  x_DetailAlbedoMap_ST : vec4<f32>,
  x_UVSec : f32,
  @size(12)
  padding : u32,
  unity_MetaVertexControl : vec4<u32>,
}

var<private> in_POSITION0 : vec4<f32>;

var<private> in_TEXCOORD1 : vec2<f32>;

@group(1) @binding(1) var<uniform> x_35 : VGlobals;

var<private> in_TEXCOORD2 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlatb0 : bool;
  var u_xlat0 : vec4<f32>;
  var x_58 : vec3<f32>;
  var u_xlatb6 : bool;
  var u_xlat1 : vec4<f32>;
  var x_94 : vec3<f32>;
  var x_143 : vec2<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_18 : f32 = in_POSITION0.z;
  u_xlatb0 = (0.0f < x_18);
  let x_22 : bool = u_xlatb0;
  u_xlat0.z = select(0.0f, 0.0001f, x_22);
  let x_30 : vec2<f32> = in_TEXCOORD1;
  let x_40 : vec4<f32> = x_35.unity_LightmapST;
  let x_44 : vec4<f32> = x_35.unity_LightmapST;
  let x_46 : vec2<f32> = ((x_30 * vec2<f32>(x_40.x, x_40.y)) + vec2<f32>(x_44.z, x_44.w));
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
  let x_78 : vec2<f32> = in_TEXCOORD2;
  let x_81 : vec4<f32> = x_35.unity_DynamicLightmapST;
  let x_85 : vec4<f32> = x_35.unity_DynamicLightmapST;
  let x_87 : vec2<f32> = ((x_78 * vec2<f32>(x_81.x, x_81.y)) + vec2<f32>(x_85.z, x_85.w));
  let x_88 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_87.x, x_87.y, x_88.z, x_88.w);
  let x_92 : u32 = x_35.unity_MetaVertexControl.y;
  if ((x_92 != 0u)) {
    let x_97 : vec4<f32> = u_xlat1;
    x_94 = vec3<f32>(x_97.x, x_97.y, x_97.z);
  } else {
    let x_100 : vec4<f32> = u_xlat0;
    x_94 = vec3<f32>(x_100.x, x_100.y, x_100.z);
  }
  let x_102 : vec3<f32> = x_94;
  let x_103 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_102.x, x_102.y, x_102.z, x_103.w);
  let x_105 : vec4<f32> = u_xlat0;
  let x_109 : vec4<f32> = x_35.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_105.y, x_105.y, x_105.y, x_105.y) * x_109);
  let x_112 : vec4<f32> = x_35.unity_MatrixVP[0i];
  let x_113 : vec4<f32> = u_xlat0;
  let x_116 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_112 * vec4<f32>(x_113.x, x_113.x, x_113.x, x_113.x)) + x_116);
  let x_119 : vec4<f32> = x_35.unity_MatrixVP[2i];
  let x_120 : vec4<f32> = u_xlat0;
  let x_123 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_119 * vec4<f32>(x_120.z, x_120.z, x_120.z, x_120.z)) + x_123);
  let x_129 : vec4<f32> = u_xlat0;
  let x_132 : vec4<f32> = x_35.unity_MatrixVP[3i];
  gl_Position = (x_129 + x_132);
  let x_139 : f32 = x_35.x_UVSec;
  u_xlatb0 = (x_139 == 0.0f);
  let x_141 : bool = u_xlatb0;
  if (x_141) {
    let x_147 : vec2<f32> = in_TEXCOORD0;
    x_143 = x_147;
  } else {
    let x_149 : vec2<f32> = in_TEXCOORD1;
    x_143 = x_149;
  }
  let x_150 : vec2<f32> = x_143;
  let x_151 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_150.x, x_150.y, x_151.z, x_151.w);
  let x_154 : vec4<f32> = u_xlat0;
  let x_158 : vec4<f32> = x_35.x_DetailAlbedoMap_ST;
  let x_162 : vec4<f32> = x_35.x_DetailAlbedoMap_ST;
  let x_164 : vec2<f32> = ((vec2<f32>(x_154.x, x_154.y) * vec2<f32>(x_158.x, x_158.y)) + vec2<f32>(x_162.z, x_162.w));
  let x_165 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_165.x, x_165.y, x_164.x, x_164.y);
  let x_167 : vec2<f32> = in_TEXCOORD0;
  let x_169 : vec4<f32> = x_35.x_MainTex_ST;
  let x_173 : vec4<f32> = x_35.x_MainTex_ST;
  let x_175 : vec2<f32> = ((x_167 * vec2<f32>(x_169.x, x_169.y)) + vec2<f32>(x_173.z, x_173.w));
  let x_176 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_175.x, x_175.y, x_176.z, x_176.w);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TEXCOORD1_param : vec2<f32>, @location(3) in_TEXCOORD2_param : vec2<f32>, @location(1) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_TEXCOORD2 = in_TEXCOORD2_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0);
}

