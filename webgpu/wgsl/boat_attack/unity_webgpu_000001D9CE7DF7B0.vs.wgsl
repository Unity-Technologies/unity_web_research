diagnostic(off, derivative_uniformity);

struct VGlobals {
  /* @offset(0) */
  x_ScaledScreenParams : vec4<f32>,
  /* @offset(16) */
  unity_StereoEyeIndex : i32,
  /* @offset(32) */
  x_FlareData0 : vec4<f32>,
  /* @offset(48) */
  x_FlareData2 : vec4<f32>,
  /* @offset(64) */
  x_FlareData3 : vec4<f32>,
  /* @offset(80) */
  x_FlareOcclusionIndex : vec4<f32>,
}

var<private> u_xlat0 : vec2<f32>;

@group(1) @binding(1) var<uniform> x_14 : VGlobals;

var<private> u_xlatu2 : vec3<u32>;

var<private> gl_VertexIndex : i32;

var<private> u_xlati4 : i32;

var<private> u_xlati6 : i32;

var<private> u_xlat1 : vec2<f32>;

var<private> u_xlat3 : vec2<f32>;

var<private> u_xlati2 : i32;

var<private> u_xlat2 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat6 : f32;

var<private> u_xlatb0 : bool;

var<private> u_xlatb2 : vec2<bool>;

var<private> u_xlatb4 : vec2<bool>;

var<private> vs_TEXCOORD1 : f32;

var<private> u_xlatu0 : vec4<u32>;

@group(0) @binding(2) var x_FlareOcclusionTex : texture_2d_array<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_20 : f32 = x_14.x_ScaledScreenParams.y;
  let x_23 : f32 = x_14.x_ScaledScreenParams.x;
  u_xlat0.x = (x_20 / x_23);
  let x_32 : i32 = gl_VertexIndex;
  u_xlatu2.x = (bitcast<u32>(x_32) >> 1u);
  let x_39 : i32 = gl_VertexIndex;
  u_xlati4 = bitcast<i32>((bitcast<u32>(x_39) & 1u));
  let x_44 : i32 = u_xlati4;
  let x_47 : u32 = u_xlatu2.x;
  u_xlati6 = (-(x_44) + -(bitcast<i32>(x_47)));
  let x_51 : i32 = u_xlati6;
  u_xlati6 = (x_51 + 1i);
  let x_54 : i32 = u_xlati6;
  u_xlatu2.z = (bitcast<u32>(x_54) & 1u);
  let x_61 : vec3<u32> = u_xlatu2;
  u_xlat1 = vec2<f32>(vec2<u32>(x_61.x, x_61.z));
  let x_65 : vec2<f32> = u_xlat1;
  u_xlat3 = ((x_65 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_73 : i32 = u_xlati4;
  let x_75 : u32 = u_xlatu2.x;
  u_xlati2 = (x_73 + bitcast<i32>(x_75));
  let x_78 : i32 = u_xlati2;
  u_xlatu2.x = (bitcast<u32>(x_78) & 1u);
  let x_84 : u32 = u_xlatu2.x;
  u_xlat2.x = f32(x_84);
  let x_90 : f32 = u_xlat2.x;
  vs_TEXCOORD0.y = (-(x_90) + 1.0f);
  let x_97 : f32 = u_xlat1.x;
  vs_TEXCOORD0.x = (-(x_97) + 1.0f);
  let x_101 : vec2<f32> = u_xlat3;
  let x_105 : vec4<f32> = x_14.x_FlareData2;
  u_xlat2 = (x_101 * vec2<f32>(x_105.z, x_105.w));
  let x_110 : f32 = u_xlat2.y;
  let x_113 : f32 = x_14.x_FlareData0.y;
  u_xlat6 = (x_110 * x_113);
  let x_116 : f32 = u_xlat2.x;
  let x_118 : f32 = x_14.x_FlareData0.x;
  let x_120 : f32 = u_xlat6;
  u_xlat6 = ((x_116 * x_118) + -(x_120));
  let x_123 : vec2<f32> = u_xlat2;
  let x_126 : vec4<f32> = x_14.x_FlareData0;
  u_xlat1.y = dot(vec2<f32>(x_123.y, x_123.x), vec2<f32>(x_126.x, x_126.y));
  let x_131 : f32 = u_xlat0.x;
  let x_132 : f32 = u_xlat6;
  u_xlat1.x = (x_131 * x_132);
  let x_135 : vec2<f32> = u_xlat1;
  let x_137 : vec4<f32> = x_14.x_FlareData2;
  u_xlat0 = (x_135 + vec2<f32>(x_137.x, x_137.y));
  let x_144 : vec2<f32> = u_xlat0;
  let x_146 : vec4<f32> = x_14.x_FlareData0;
  let x_148 : vec2<f32> = (x_144 + vec2<f32>(x_146.z, x_146.w));
  let x_151 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_148.x, x_148.y, x_151.z, x_151.w);
  let x_158 : f32 = x_14.x_FlareData3.x;
  u_xlatb0 = (x_158 < 0.0f);
  let x_165 : vec4<f32> = x_14.x_FlareData2;
  let x_169 : vec4<bool> = (vec4<f32>(x_165.x, x_165.y, x_165.x, x_165.x) < vec4<f32>(-1.0f, -1.0f, 0.0f, 0.0f));
  u_xlatb2 = vec2<bool>(x_169.x, x_169.y);
  let x_172 : bool = u_xlatb2.y;
  let x_174 : bool = u_xlatb2.x;
  u_xlatb2.x = (x_172 | x_174);
  let x_180 : vec4<f32> = x_14.x_FlareData2;
  let x_182 : vec4<bool> = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) < vec4<f32>(x_180.x, x_180.y, x_180.x, x_180.y));
  u_xlatb4 = vec2<bool>(x_182.x, x_182.y);
  let x_185 : bool = u_xlatb4.y;
  let x_187 : bool = u_xlatb4.x;
  u_xlatb4.x = (x_185 | x_187);
  let x_191 : bool = u_xlatb4.x;
  let x_193 : bool = u_xlatb2.x;
  u_xlatb2.x = (x_191 | x_193);
  let x_197 : bool = u_xlatb2.x;
  let x_198 : bool = u_xlatb0;
  u_xlatb0 = (x_197 & x_198);
  let x_200 : bool = u_xlatb0;
  if (x_200) {
    vs_TEXCOORD1 = 0.0f;
  } else {
    let x_210 : f32 = x_14.x_FlareOcclusionIndex.x;
    u_xlatu0.x = u32(x_210);
    u_xlatu0.y = 0u;
    u_xlatu0.w = 0u;
    let x_218 : i32 = x_14.unity_StereoEyeIndex;
    u_xlatu0.z = bitcast<u32>(x_218);
    let x_225 : vec4<u32> = u_xlatu0;
    let x_230 : u32 = u_xlatu0.w;
    let x_232 : vec4<f32> = textureLoad(x_FlareOcclusionTex, (bitcast<vec3<i32>>(vec3<u32>(x_225.x, x_225.y, x_225.z))).xy, (bitcast<vec3<i32>>(vec3<u32>(x_225.x, x_225.y, x_225.z))).z, bitcast<i32>(x_230));
    u_xlat0.x = x_232.x;
    let x_236 : f32 = u_xlat0.x;
    vs_TEXCOORD1 = x_236;
  }
  let x_239 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_239.x, x_239.y, vec2<f32>(1.0f, 1.0f).x, vec2<f32>(1.0f, 1.0f).y);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : f32,
}

@vertex
fn main(@builtin(vertex_index) gl_VertexIndex_param : u32) -> main_out {
  gl_VertexIndex = bitcast<i32>(gl_VertexIndex_param);
  main_1();
  return main_out(vs_TEXCOORD0, gl_Position, vs_TEXCOORD1);
}


