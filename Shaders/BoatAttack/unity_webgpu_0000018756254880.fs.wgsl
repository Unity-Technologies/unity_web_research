struct PGlobals {
  x_PCUVToBrushUVScales : vec4<f32>,
  x_PCUVToBrushUVOffset : vec2<f32>,
  @size(8)
  padding : u32,
  x_BrushParams : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_17 : PGlobals;

@group(0) @binding(0) var x_BrushTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_BrushTex : sampler;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat2 : vec2<f32>;
  var u_xlatb2 : vec2<bool>;
  var u_xlatb1 : bool;
  var u_xlat1 : f32;
  var u_xlatb0 : bool;
  var u_xlati2 : i32;
  var u_xlati1 : i32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  let x_22 : vec4<f32> = x_17.x_PCUVToBrushUVScales;
  u_xlat0 = (vec4<f32>(x_13.x, x_13.x, x_13.y, x_13.y) * x_22);
  let x_24 : vec4<f32> = u_xlat0;
  let x_26 : vec4<f32> = u_xlat0;
  let x_28 : vec2<f32> = (vec2<f32>(x_24.z, x_24.w) + vec2<f32>(x_26.x, x_26.y));
  let x_29 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_28.x, x_28.y, x_29.z, x_29.w);
  let x_31 : vec4<f32> = u_xlat0;
  let x_36 : vec2<f32> = x_17.x_PCUVToBrushUVOffset;
  let x_37 : vec2<f32> = (vec2<f32>(x_31.x, x_31.y) + x_36);
  let x_38 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_37.x, x_37.y, x_38.z, x_38.w);
  let x_42 : vec4<f32> = u_xlat0;
  u_xlat2 = vec2<f32>(x_42.x, x_42.y);
  let x_44 : vec2<f32> = u_xlat2;
  u_xlat2 = clamp(x_44, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_54 : vec4<f32> = u_xlat0;
  let x_56 : vec2<f32> = u_xlat2;
  let x_59 : vec4<bool> = (vec4<f32>(x_54.x, x_54.y, x_54.x, x_54.y) == vec4<f32>(x_56.x, x_56.y, x_56.x, x_56.y));
  u_xlatb2 = vec2<bool>(x_59.x, x_59.y);
  let x_71 : vec4<f32> = u_xlat0;
  let x_73 : vec4<f32> = textureSample(x_BrushTex, sampler_BrushTex, vec2<f32>(x_71.x, x_71.y));
  let x_74 : vec2<f32> = vec2<f32>(x_73.x, x_73.y);
  let x_75 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_74.x, x_74.y, x_75.z, x_75.w);
  let x_81 : f32 = u_xlat0.y;
  let x_86 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_81 * 256.0f) + x_86);
  let x_90 : f32 = u_xlat0.x;
  u_xlat0.x = (x_90 * 0.00389105058f);
  let x_97 : bool = u_xlatb2.y;
  let x_99 : bool = u_xlatb2.x;
  u_xlatb1 = (x_97 & x_99);
  let x_102 : bool = u_xlatb1;
  u_xlat1 = select(0.0f, 1.0f, x_102);
  let x_104 : f32 = u_xlat1;
  let x_108 : f32 = x_17.x_BrushParams.x;
  u_xlat1 = (x_104 * x_108);
  let x_110 : f32 = u_xlat1;
  u_xlat2.x = (-(abs(x_110)) + 1.0f);
  let x_117 : f32 = u_xlat2.x;
  let x_119 : f32 = u_xlat0.x;
  u_xlatb0 = (x_117 < x_119);
  let x_123 : f32 = u_xlat1;
  u_xlati2 = bitcast<i32>(select(0u, 4294967295u, (0.0f < x_123)));
  let x_129 : f32 = u_xlat1;
  u_xlati1 = bitcast<i32>(select(0u, 4294967295u, (x_129 < 0.0f)));
  let x_133 : i32 = u_xlati2;
  let x_135 : i32 = u_xlati1;
  u_xlati1 = (-(x_133) + x_135);
  let x_137 : i32 = u_xlati1;
  u_xlat1 = f32(x_137);
  let x_139 : bool = u_xlatb0;
  let x_140 : f32 = u_xlat1;
  u_xlat0.x = select(0.0f, x_140, x_139);
  let x_148 : vec2<f32> = vs_TEXCOORD0;
  let x_149 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_148);
  u_xlat1 = x_149.x;
  let x_153 : vec4<f32> = u_xlat0;
  let x_155 : f32 = u_xlat1;
  SV_Target0 = (vec4<f32>(x_153.x, x_153.x, x_153.x, x_153.x) + vec4<f32>(x_155, x_155, x_155, x_155));
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

