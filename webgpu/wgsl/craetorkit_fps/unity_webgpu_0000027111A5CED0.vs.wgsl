struct VGlobals {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  unity_LightmapST : vec4<f32>,
  unity_DynamicLightmapST : vec4<f32>,
  unity_MetaVertexControl : vec4<u32>,
  x_Gradient_ST : vec4<f32>,
}

@group(0) @binding(0) var x_Gradient : texture_2d<f32>;

@group(0) @binding(1) var sampler_Gradient : sampler;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> in_POSITION0 : vec4<f32>;

var<private> in_TEXCOORD1 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_144 : VGlobals;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> in_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD2 : f32;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat6 : vec2<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_165 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlatb9 : bool;
  var x_241 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = in_TEXCOORD0;
  let x_26 : vec4<f32> = textureSampleLevel(x_Gradient, sampler_Gradient, vec2<f32>(x_23.x, x_23.y), 0.0f);
  u_xlat0.x = x_26.y;
  let x_33 : vec4<f32> = u_xlat0;
  let x_38 : vec3<f32> = in_NORMAL0;
  let x_40 : vec2<f32> = (vec2<f32>(x_33.x, x_33.x) * vec2<f32>(x_38.x, x_38.z));
  let x_41 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_40.x, x_40.y, x_41.z, x_41.w);
  let x_43 : vec4<f32> = u_xlat0;
  let x_47 : vec2<f32> = (vec2<f32>(x_43.x, x_43.y) * vec2<f32>(0.02f, 0.02f));
  let x_48 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_47.x, x_47.y, x_48.z, x_48.w);
  let x_52 : vec4<f32> = in_TEXCOORD0;
  u_xlat6 = (vec2<f32>(x_52.z, x_52.z) + vec2<f32>(-1.0f, -0.300000012f));
  let x_58 : vec2<f32> = u_xlat6;
  u_xlat6 = (x_58 * vec2<f32>(-9.999998093f, 50.000049591f));
  let x_63 : vec2<f32> = u_xlat6;
  u_xlat6 = clamp(x_63, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_69 : vec4<f32> = u_xlat0;
  let x_71 : vec2<f32> = u_xlat6;
  let x_75 : vec4<f32> = in_POSITION0;
  let x_77 : vec2<f32> = ((vec2<f32>(x_69.x, x_69.y) * vec2<f32>(x_71.y, x_71.y)) + vec2<f32>(x_75.x, x_75.z));
  let x_78 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_77.x, x_78.y, x_77.y, x_78.w);
  let x_81 : f32 = u_xlat6.x;
  let x_85 : f32 = in_TEXCOORD0.y;
  u_xlat0.y = (-(x_81) + x_85);
  let x_89 : f32 = in_TEXCOORD0.x;
  u_xlat0.x = x_89;
  let x_94 : vec4<f32> = u_xlat0;
  let x_96 : vec4<f32> = textureSampleLevel(x_Gradient, sampler_Gradient, vec2<f32>(x_94.x, x_94.y), 0.0f);
  u_xlat0.x = x_96.x;
  let x_99 : vec4<f32> = u_xlat0;
  let x_101 : vec3<f32> = in_NORMAL0;
  u_xlat0 = (vec4<f32>(x_99.x, x_99.x, x_99.x, x_99.x) * vec4<f32>(x_101.x, x_101.y, x_101.z, x_101.x));
  let x_105 : f32 = in_POSITION0.y;
  u_xlat1.y = x_105;
  let x_107 : vec4<f32> = u_xlat0;
  let x_112 : vec4<f32> = u_xlat1;
  let x_114 : vec3<f32> = ((vec3<f32>(x_107.x, x_107.y, x_107.z) * vec3<f32>(0.449999988f, 0.449999988f, 0.449999988f)) + vec3<f32>(x_112.x, x_112.y, x_112.z));
  let x_115 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_114.x, x_114.y, x_114.z, x_115.w);
  let x_119 : f32 = u_xlat0.w;
  let x_123 : f32 = u_xlat1.y;
  u_xlat1.w = ((x_119 * 0.25f) + x_123);
  let x_131 : f32 = u_xlat1.z;
  u_xlatb0 = (0.0f < x_131);
  let x_133 : bool = u_xlatb0;
  u_xlat0.z = select(0.0f, 0.0001f, x_133);
  let x_138 : vec4<f32> = in_TEXCOORD1;
  let x_149 : vec4<f32> = x_144.unity_LightmapST;
  let x_153 : vec4<f32> = x_144.unity_LightmapST;
  let x_155 : vec2<f32> = ((vec2<f32>(x_138.x, x_138.y) * vec2<f32>(x_149.x, x_149.y)) + vec2<f32>(x_153.z, x_153.w));
  let x_156 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_155.x, x_155.y, x_156.z, x_156.w);
  let x_162 : u32 = x_144.unity_MetaVertexControl.x;
  if ((x_162 != 0u)) {
    let x_168 : vec4<f32> = u_xlat0;
    x_165 = vec3<f32>(x_168.x, x_168.y, x_168.z);
  } else {
    let x_171 : vec4<f32> = u_xlat1;
    x_165 = vec3<f32>(x_171.x, x_171.w, x_171.z);
  }
  let x_173 : vec3<f32> = x_165;
  let x_174 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_173.x, x_173.y, x_173.z, x_174.w);
  let x_177 : vec4<f32> = u_xlat1;
  let x_182 : vec4<f32> = x_144.unity_ObjectToWorld[1i];
  u_xlat2 = (vec3<f32>(x_177.w, x_177.w, x_177.w) * vec3<f32>(x_182.x, x_182.y, x_182.z));
  let x_186 : vec4<f32> = x_144.unity_ObjectToWorld[0i];
  let x_188 : vec4<f32> = u_xlat1;
  let x_191 : vec3<f32> = u_xlat2;
  let x_192 : vec3<f32> = ((vec3<f32>(x_186.x, x_186.y, x_186.z) * vec3<f32>(x_188.x, x_188.x, x_188.x)) + x_191);
  let x_193 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_192.x, x_192.y, x_193.z, x_192.z);
  let x_196 : vec4<f32> = x_144.unity_ObjectToWorld[2i];
  let x_198 : vec4<f32> = u_xlat1;
  let x_201 : vec4<f32> = u_xlat1;
  let x_203 : vec3<f32> = ((vec3<f32>(x_196.x, x_196.y, x_196.z) * vec3<f32>(x_198.z, x_198.z, x_198.z)) + vec3<f32>(x_201.x, x_201.y, x_201.w));
  let x_204 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_203.x, x_203.y, x_203.z, x_204.w);
  let x_210 : vec4<f32> = x_144.unity_ObjectToWorld[3i];
  let x_212 : vec4<f32> = in_POSITION0;
  let x_215 : vec4<f32> = u_xlat1;
  vs_TEXCOORD1 = ((vec3<f32>(x_210.x, x_210.y, x_210.z) * vec3<f32>(x_212.w, x_212.w, x_212.w)) + vec3<f32>(x_215.x, x_215.y, x_215.z));
  let x_220 : f32 = u_xlat0.z;
  u_xlatb9 = (0.0f < x_220);
  let x_222 : bool = u_xlatb9;
  u_xlat1.z = select(0.0f, 0.0001f, x_222);
  let x_226 : vec4<f32> = in_TEXCOORD2;
  let x_229 : vec4<f32> = x_144.unity_DynamicLightmapST;
  let x_233 : vec4<f32> = x_144.unity_DynamicLightmapST;
  let x_235 : vec2<f32> = ((vec2<f32>(x_226.x, x_226.y) * vec2<f32>(x_229.x, x_229.y)) + vec2<f32>(x_233.z, x_233.w));
  let x_236 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_235.x, x_235.y, x_236.z, x_236.w);
  let x_239 : u32 = x_144.unity_MetaVertexControl.y;
  if ((x_239 != 0u)) {
    let x_244 : vec4<f32> = u_xlat1;
    x_241 = vec3<f32>(x_244.x, x_244.y, x_244.z);
  } else {
    let x_247 : vec4<f32> = u_xlat0;
    x_241 = vec3<f32>(x_247.x, x_247.y, x_247.z);
  }
  let x_249 : vec3<f32> = x_241;
  let x_250 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_249.x, x_249.y, x_249.z, x_250.w);
  let x_252 : vec4<f32> = u_xlat0;
  let x_255 : vec4<f32> = x_144.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_252.y, x_252.y, x_252.y, x_252.y) * x_255);
  let x_258 : vec4<f32> = x_144.unity_MatrixVP[0i];
  let x_259 : vec4<f32> = u_xlat0;
  let x_262 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_258 * vec4<f32>(x_259.x, x_259.x, x_259.x, x_259.x)) + x_262);
  let x_265 : vec4<f32> = x_144.unity_MatrixVP[2i];
  let x_266 : vec4<f32> = u_xlat0;
  let x_269 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_265 * vec4<f32>(x_266.z, x_266.z, x_266.z, x_266.z)) + x_269);
  let x_275 : vec4<f32> = u_xlat0;
  let x_277 : vec4<f32> = x_144.unity_MatrixVP[3i];
  gl_Position = (x_275 + x_277);
  let x_283 : vec4<f32> = in_TEXCOORD0;
  let x_287 : vec4<f32> = x_144.x_Gradient_ST;
  let x_291 : vec4<f32> = x_144.x_Gradient_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_283.x, x_283.y) * vec2<f32>(x_287.x, x_287.y)) + vec2<f32>(x_291.z, x_291.w));
  let x_297 : f32 = in_TEXCOORD0.z;
  vs_TEXCOORD2 = x_297;
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD2_1 : f32,
}

@vertex
fn main(@location(1) in_TEXCOORD0_param : vec4<f32>, @location(4) in_NORMAL0_param : vec3<f32>, @location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TEXCOORD1_param : vec4<f32>, @location(3) in_TEXCOORD2_param : vec4<f32>) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_TEXCOORD2 = in_TEXCOORD2_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD2);
}

