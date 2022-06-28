struct PGlobals {
  x_TextureSampleAdd : vec4<f32>,
  x_ClipRect : vec4<f32>,
}

var<private> u_xlatb0 : vec4<bool>;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_18 : PGlobals;

var<private> u_xlat0 : vec4<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_14 : vec4<f32> = vs_TEXCOORD1;
  let x_23 : vec4<f32> = x_18.x_ClipRect;
  let x_25 : vec4<bool> = (vec4<f32>(x_14.x, x_14.y, x_14.x, x_14.x) >= vec4<f32>(x_23.x, x_23.y, x_23.x, x_23.x));
  let x_27 : vec2<bool> = vec2<bool>(x_25.x, x_25.y);
  let x_28 : vec4<bool> = u_xlatb0;
  u_xlatb0 = vec4<bool>(x_27.x, x_27.y, x_28.z, x_28.w);
  let x_31 : vec4<f32> = x_18.x_ClipRect;
  let x_33 : vec4<f32> = vs_TEXCOORD1;
  let x_35 : vec4<bool> = (vec4<f32>(x_31.z, x_31.z, x_31.z, x_31.w) >= vec4<f32>(x_33.x, x_33.x, x_33.x, x_33.y));
  let x_36 : vec2<bool> = vec2<bool>(x_35.z, x_35.w);
  let x_37 : vec4<bool> = u_xlatb0;
  u_xlatb0 = vec4<bool>(x_37.x, x_37.y, x_36.x, x_36.y);
  let x_45 : bool = u_xlatb0.x;
  u_xlat0.x = select(0.0f, 1.0f, x_45);
  let x_53 : bool = u_xlatb0.y;
  u_xlat0.y = select(0.0f, 1.0f, x_53);
  let x_58 : bool = u_xlatb0.z;
  u_xlat0.z = select(0.0f, 1.0f, x_58);
  let x_63 : bool = u_xlatb0.w;
  u_xlat0.w = select(0.0f, 1.0f, x_63);
  let x_67 : vec4<f32> = u_xlat0;
  let x_69 : vec4<f32> = u_xlat0;
  let x_71 : vec2<f32> = (vec2<f32>(x_67.z, x_67.w) * vec2<f32>(x_69.x, x_69.y));
  let x_72 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_71.x, x_71.y, x_72.z, x_72.w);
  let x_75 : f32 = u_xlat0.y;
  let x_77 : f32 = u_xlat0.x;
  u_xlat0.x = (x_75 * x_77);
  let x_93 : vec2<f32> = vs_TEXCOORD0;
  let x_94 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_93);
  u_xlat1 = x_94;
  let x_95 : vec4<f32> = u_xlat1;
  let x_98 : vec4<f32> = x_18.x_TextureSampleAdd;
  u_xlat1 = (x_95 + x_98);
  let x_100 : vec4<f32> = u_xlat1;
  let x_102 : vec4<f32> = vs_COLOR0;
  u_xlat1 = (x_100 * x_102);
  let x_107 : f32 = u_xlat0.x;
  let x_109 : f32 = u_xlat1.w;
  SV_Target0.w = (x_107 * x_109);
  let x_114 : vec4<f32> = u_xlat1;
  let x_115 : vec3<f32> = vec3<f32>(x_114.x, x_114.y, x_114.z);
  let x_116 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_115.x, x_115.y, x_115.z, x_116.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(2) vs_TEXCOORD1_param : vec4<f32>, @location(1) vs_TEXCOORD0_param : vec2<f32>, @location(0) vs_COLOR0_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

