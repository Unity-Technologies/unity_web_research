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

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(0) @binding(14) var<uniform> x_18 : VGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlatb1 : bool;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD1 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat10 : f32;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var x_96 : vec2<f32>;
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
  vs_TEXCOORD1.w = 0.0f;
  let x_138 : vec4<f32> = in_POSITION0;
  let x_141 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  let x_143 : vec3<f32> = (vec3<f32>(x_138.y, x_138.y, x_138.y) * vec3<f32>(x_141.x, x_141.y, x_141.z));
  let x_144 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_143.x, x_143.y, x_143.z, x_144.w);
  let x_147 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_149 : vec4<f32> = in_POSITION0;
  let x_152 : vec4<f32> = u_xlat1;
  let x_154 : vec3<f32> = ((vec3<f32>(x_147.x, x_147.y, x_147.z) * vec3<f32>(x_149.x, x_149.x, x_149.x)) + vec3<f32>(x_152.x, x_152.y, x_152.z));
  let x_155 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_154.x, x_154.y, x_154.z, x_155.w);
  let x_158 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_160 : vec4<f32> = in_POSITION0;
  let x_163 : vec4<f32> = u_xlat1;
  let x_165 : vec3<f32> = ((vec3<f32>(x_158.x, x_158.y, x_158.z) * vec3<f32>(x_160.z, x_160.z, x_160.z)) + vec3<f32>(x_163.x, x_163.y, x_163.z));
  let x_166 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_165.x, x_165.y, x_165.z, x_166.w);
  let x_169 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  let x_171 : vec4<f32> = in_POSITION0;
  let x_174 : vec4<f32> = u_xlat1;
  let x_176 : vec3<f32> = ((vec3<f32>(x_169.x, x_169.y, x_169.z) * vec3<f32>(x_171.w, x_171.w, x_171.w)) + vec3<f32>(x_174.x, x_174.y, x_174.z));
  let x_177 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_176.x, x_176.y, x_176.z, x_177.w);
  let x_179 : vec4<f32> = u_xlat1;
  let x_183 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  let x_185 : vec3<f32> = (vec3<f32>(x_179.x, x_179.y, x_179.z) + -(x_183));
  let x_186 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_185.x, x_185.y, x_185.z, x_186.w);
  u_xlat1.w = 0.0f;
  let x_191 : vec4<f32> = u_xlat1;
  vs_TEXCOORD2 = vec4<f32>(x_191.w, x_191.w, x_191.w, x_191.x);
  let x_194 : vec4<f32> = u_xlat1;
  vs_TEXCOORD3 = vec4<f32>(x_194.w, x_194.w, x_194.w, x_194.y);
  let x_199 : f32 = u_xlat1.z;
  vs_TEXCOORD4.w = x_199;
  let x_203 : vec3<f32> = in_NORMAL0;
  let x_206 : vec4<f32> = x_18.unity_WorldToObject[0i];
  u_xlat1.x = dot(x_203, vec3<f32>(x_206.x, x_206.y, x_206.z));
  let x_211 : vec3<f32> = in_NORMAL0;
  let x_213 : vec4<f32> = x_18.unity_WorldToObject[1i];
  u_xlat1.y = dot(x_211, vec3<f32>(x_213.x, x_213.y, x_213.z));
  let x_217 : vec3<f32> = in_NORMAL0;
  let x_219 : vec4<f32> = x_18.unity_WorldToObject[2i];
  u_xlat1.z = dot(x_217, vec3<f32>(x_219.x, x_219.y, x_219.z));
  let x_224 : vec4<f32> = u_xlat1;
  let x_226 : vec4<f32> = u_xlat1;
  u_xlat10 = dot(vec3<f32>(x_224.x, x_224.y, x_224.z), vec3<f32>(x_226.x, x_226.y, x_226.z));
  let x_229 : f32 = u_xlat10;
  u_xlat10 = inverseSqrt(x_229);
  let x_231 : f32 = u_xlat10;
  let x_233 : vec4<f32> = u_xlat1;
  let x_235 : vec3<f32> = (vec3<f32>(x_231, x_231, x_231) * vec3<f32>(x_233.x, x_233.y, x_233.z));
  let x_236 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_235.x, x_235.y, x_235.z, x_236.w);
  let x_238 : vec4<f32> = u_xlat1;
  let x_239 : vec3<f32> = vec3<f32>(x_238.x, x_238.y, x_238.z);
  let x_240 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_239.x, x_239.y, x_239.z, x_240.w);
  let x_243 : f32 = u_xlat1.y;
  let x_245 : f32 = u_xlat1.y;
  u_xlat10 = (x_243 * x_245);
  let x_248 : f32 = u_xlat1.x;
  let x_250 : f32 = u_xlat1.x;
  let x_252 : f32 = u_xlat10;
  u_xlat10 = ((x_248 * x_250) + -(x_252));
  let x_256 : vec4<f32> = u_xlat1;
  let x_258 : vec4<f32> = u_xlat1;
  u_xlat2 = (vec4<f32>(x_256.y, x_256.z, x_256.z, x_256.x) * vec4<f32>(x_258.x, x_258.y, x_258.z, x_258.z));
  let x_262 : vec4<f32> = x_18.unity_SHBr;
  let x_263 : vec4<f32> = u_xlat2;
  u_xlat1.x = dot(x_262, x_263);
  let x_267 : vec4<f32> = x_18.unity_SHBg;
  let x_268 : vec4<f32> = u_xlat2;
  u_xlat1.y = dot(x_267, x_268);
  let x_273 : vec4<f32> = x_18.unity_SHBb;
  let x_274 : vec4<f32> = u_xlat2;
  u_xlat1.z = dot(x_273, x_274);
  let x_280 : vec4<f32> = x_18.unity_SHC;
  let x_282 : f32 = u_xlat10;
  let x_285 : vec4<f32> = u_xlat1;
  let x_287 : vec3<f32> = ((vec3<f32>(x_280.x, x_280.y, x_280.z) * vec3<f32>(x_282, x_282, x_282)) + vec3<f32>(x_285.x, x_285.y, x_285.z));
  let x_288 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_287.x, x_287.y, x_287.z, x_288.w);
  vs_TEXCOORD5.w = 0.0f;
  let x_292 : f32 = u_xlat0.y;
  let x_294 : f32 = x_18.x_ProjectionParams.x;
  u_xlat0.y = (x_292 * x_294);
  let x_297 : vec4<f32> = u_xlat0;
  let x_301 : vec3<f32> = (vec3<f32>(x_297.x, x_297.w, x_297.y) * vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_302 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_301.x, x_302.y, x_301.y, x_301.z);
  let x_305 : vec4<f32> = u_xlat0;
  let x_306 : vec2<f32> = vec2<f32>(x_305.z, x_305.w);
  let x_307 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_307.x, x_307.y, x_306.x, x_306.y);
  let x_309 : vec4<f32> = u_xlat1;
  let x_311 : vec4<f32> = u_xlat1;
  let x_313 : vec2<f32> = (vec2<f32>(x_309.z, x_309.z) + vec2<f32>(x_311.x, x_311.w));
  let x_314 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_313.x, x_313.y, x_314.z, x_314.w);
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

