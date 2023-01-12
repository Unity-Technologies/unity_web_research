struct VGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
  x_DetailAlbedoMap_ST : vec4<f32>,
  x_UVSec : f32,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_18 : VGlobals;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD1 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb1 : bool;
  var x_96 : vec2<f32>;
  var u_xlat10 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_24 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_24);
  let x_28 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_29 : vec4<f32> = in_POSITION0;
  let x_32 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_28 * vec4<f32>(x_29.x, x_29.x, x_29.x, x_29.x)) + x_32);
  let x_36 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_37 : vec4<f32> = in_POSITION0;
  let x_40 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_36 * vec4<f32>(x_37.z, x_37.z, x_37.z, x_37.z)) + x_40);
  let x_42 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  u_xlat0 = (x_42 + x_45);
  let x_48 : vec4<f32> = u_xlat0;
  let x_52 : vec4<f32> = x_18.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_48.y, x_48.y, x_48.y, x_48.y) * x_52);
  let x_55 : vec4<f32> = x_18.unity_MatrixVP[0i];
  let x_56 : vec4<f32> = u_xlat0;
  let x_59 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_55 * vec4<f32>(x_56.x, x_56.x, x_56.x, x_56.x)) + x_59);
  let x_62 : vec4<f32> = x_18.unity_MatrixVP[2i];
  let x_63 : vec4<f32> = u_xlat0;
  let x_66 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_62 * vec4<f32>(x_63.z, x_63.z, x_63.z, x_63.z)) + x_66);
  let x_69 : vec4<f32> = x_18.unity_MatrixVP[3i];
  let x_70 : vec4<f32> = u_xlat0;
  let x_73 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_69 * vec4<f32>(x_70.w, x_70.w, x_70.w, x_70.w)) + x_73);
  let x_81 : vec4<f32> = u_xlat0;
  gl_Position = x_81;
  let x_90 : f32 = x_18.x_UVSec;
  u_xlatb1 = (x_90 == 0.0f);
  let x_93 : bool = u_xlatb1;
  if (x_93) {
    let x_101 : vec2<f32> = in_TEXCOORD0;
    x_96 = x_101;
  } else {
    let x_104 : vec2<f32> = in_TEXCOORD1;
    x_96 = x_104;
  }
  let x_105 : vec2<f32> = x_96;
  let x_106 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_105.x, x_105.y, x_106.z, x_106.w);
  let x_109 : vec4<f32> = u_xlat1;
  let x_113 : vec4<f32> = x_18.x_DetailAlbedoMap_ST;
  let x_117 : vec4<f32> = x_18.x_DetailAlbedoMap_ST;
  let x_119 : vec2<f32> = ((vec2<f32>(x_109.x, x_109.y) * vec2<f32>(x_113.x, x_113.y)) + vec2<f32>(x_117.z, x_117.w));
  let x_120 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_120.x, x_120.y, x_119.x, x_119.y);
  let x_122 : vec2<f32> = in_TEXCOORD0;
  let x_125 : vec4<f32> = x_18.x_MainTex_ST;
  let x_129 : vec4<f32> = x_18.x_MainTex_ST;
  let x_131 : vec2<f32> = ((x_122 * vec2<f32>(x_125.x, x_125.y)) + vec2<f32>(x_129.z, x_129.w));
  let x_132 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_131.x, x_131.y, x_132.z, x_132.w);
  let x_138 : f32 = u_xlat0.z;
  vs_TEXCOORD1.w = x_138;
  let x_142 : vec4<f32> = in_POSITION0;
  let x_145 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  let x_147 : vec3<f32> = (vec3<f32>(x_142.y, x_142.y, x_142.y) * vec3<f32>(x_145.x, x_145.y, x_145.z));
  let x_148 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_147.x, x_147.y, x_147.z, x_148.w);
  let x_151 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_153 : vec4<f32> = in_POSITION0;
  let x_156 : vec4<f32> = u_xlat1;
  let x_158 : vec3<f32> = ((vec3<f32>(x_151.x, x_151.y, x_151.z) * vec3<f32>(x_153.x, x_153.x, x_153.x)) + vec3<f32>(x_156.x, x_156.y, x_156.z));
  let x_159 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_158.x, x_158.y, x_158.z, x_159.w);
  let x_162 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_164 : vec4<f32> = in_POSITION0;
  let x_167 : vec4<f32> = u_xlat1;
  let x_169 : vec3<f32> = ((vec3<f32>(x_162.x, x_162.y, x_162.z) * vec3<f32>(x_164.z, x_164.z, x_164.z)) + vec3<f32>(x_167.x, x_167.y, x_167.z));
  let x_170 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_169.x, x_169.y, x_169.z, x_170.w);
  let x_173 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  let x_175 : vec4<f32> = in_POSITION0;
  let x_178 : vec4<f32> = u_xlat1;
  let x_180 : vec3<f32> = ((vec3<f32>(x_173.x, x_173.y, x_173.z) * vec3<f32>(x_175.w, x_175.w, x_175.w)) + vec3<f32>(x_178.x, x_178.y, x_178.z));
  let x_181 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_180.x, x_180.y, x_180.z, x_181.w);
  let x_183 : vec4<f32> = u_xlat1;
  let x_187 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  let x_189 : vec3<f32> = (vec3<f32>(x_183.x, x_183.y, x_183.z) + -(x_187));
  let x_190 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_189.x, x_189.y, x_189.z, x_190.w);
  u_xlat1.w = 0.0f;
  let x_194 : vec4<f32> = u_xlat1;
  vs_TEXCOORD2 = vec4<f32>(x_194.w, x_194.w, x_194.w, x_194.x);
  let x_197 : vec4<f32> = u_xlat1;
  vs_TEXCOORD3 = vec4<f32>(x_197.w, x_197.w, x_197.w, x_197.y);
  let x_201 : f32 = u_xlat1.z;
  vs_TEXCOORD4.w = x_201;
  let x_205 : vec3<f32> = in_NORMAL0;
  let x_208 : vec4<f32> = x_18.unity_WorldToObject[0i];
  u_xlat1.x = dot(x_205, vec3<f32>(x_208.x, x_208.y, x_208.z));
  let x_213 : vec3<f32> = in_NORMAL0;
  let x_215 : vec4<f32> = x_18.unity_WorldToObject[1i];
  u_xlat1.y = dot(x_213, vec3<f32>(x_215.x, x_215.y, x_215.z));
  let x_219 : vec3<f32> = in_NORMAL0;
  let x_221 : vec4<f32> = x_18.unity_WorldToObject[2i];
  u_xlat1.z = dot(x_219, vec3<f32>(x_221.x, x_221.y, x_221.z));
  let x_226 : vec4<f32> = u_xlat1;
  let x_228 : vec4<f32> = u_xlat1;
  u_xlat10 = dot(vec3<f32>(x_226.x, x_226.y, x_226.z), vec3<f32>(x_228.x, x_228.y, x_228.z));
  let x_231 : f32 = u_xlat10;
  u_xlat10 = inverseSqrt(x_231);
  let x_233 : f32 = u_xlat10;
  let x_235 : vec4<f32> = u_xlat1;
  let x_237 : vec3<f32> = (vec3<f32>(x_233, x_233, x_233) * vec3<f32>(x_235.x, x_235.y, x_235.z));
  let x_238 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_237.x, x_237.y, x_237.z, x_238.w);
  let x_240 : vec4<f32> = u_xlat1;
  let x_241 : vec3<f32> = vec3<f32>(x_240.x, x_240.y, x_240.z);
  let x_242 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_241.x, x_241.y, x_241.z, x_242.w);
  let x_245 : f32 = u_xlat1.y;
  let x_247 : f32 = u_xlat1.y;
  u_xlat10 = (x_245 * x_247);
  let x_250 : f32 = u_xlat1.x;
  let x_252 : f32 = u_xlat1.x;
  let x_254 : f32 = u_xlat10;
  u_xlat10 = ((x_250 * x_252) + -(x_254));
  let x_258 : vec4<f32> = u_xlat1;
  let x_260 : vec4<f32> = u_xlat1;
  u_xlat2 = (vec4<f32>(x_258.y, x_258.z, x_258.z, x_258.x) * vec4<f32>(x_260.x, x_260.y, x_260.z, x_260.z));
  let x_264 : vec4<f32> = x_18.unity_SHBr;
  let x_265 : vec4<f32> = u_xlat2;
  u_xlat1.x = dot(x_264, x_265);
  let x_269 : vec4<f32> = x_18.unity_SHBg;
  let x_270 : vec4<f32> = u_xlat2;
  u_xlat1.y = dot(x_269, x_270);
  let x_275 : vec4<f32> = x_18.unity_SHBb;
  let x_276 : vec4<f32> = u_xlat2;
  u_xlat1.z = dot(x_275, x_276);
  let x_282 : vec4<f32> = x_18.unity_SHC;
  let x_284 : f32 = u_xlat10;
  let x_287 : vec4<f32> = u_xlat1;
  let x_289 : vec3<f32> = ((vec3<f32>(x_282.x, x_282.y, x_282.z) * vec3<f32>(x_284, x_284, x_284)) + vec3<f32>(x_287.x, x_287.y, x_287.z));
  let x_290 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_289.x, x_289.y, x_289.z, x_290.w);
  vs_TEXCOORD5.w = 0.0f;
  let x_294 : f32 = u_xlat0.y;
  let x_296 : f32 = x_18.x_ProjectionParams.x;
  u_xlat0.y = (x_294 * x_296);
  let x_299 : vec4<f32> = u_xlat0;
  let x_303 : vec3<f32> = (vec3<f32>(x_299.x, x_299.w, x_299.y) * vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_304 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_303.x, x_304.y, x_303.y, x_303.z);
  let x_307 : vec4<f32> = u_xlat0;
  let x_308 : vec2<f32> = vec2<f32>(x_307.z, x_307.w);
  let x_309 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_309.x, x_309.y, x_308.x, x_308.y);
  let x_311 : vec4<f32> = u_xlat1;
  let x_313 : vec4<f32> = u_xlat1;
  let x_315 : vec2<f32> = (vec2<f32>(x_311.z, x_311.z) + vec2<f32>(x_313.x, x_313.w));
  let x_316 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_315.x, x_315.y, x_316.z, x_316.w);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD4_1 : vec4<f32>,
  @location(5)
  vs_TEXCOORD5_1 : vec4<f32>,
  @location(6)
  vs_TEXCOORD7_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec2<f32>, @location(3) in_TEXCOORD1_param : vec2<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4, vs_TEXCOORD5, vs_TEXCOORD7);
}

