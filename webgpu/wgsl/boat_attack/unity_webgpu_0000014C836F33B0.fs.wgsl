diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_ClipRect : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(1) var x_FaceTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_FaceTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> vs_COLOR0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlat3 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_23);
  u_xlat0 = x_24;
  let x_32 : vec2<f32> = vs_TEXCOORD1;
  let x_33 : vec4<f32> = textureSample(x_FaceTex, sampler_FaceTex, x_32);
  u_xlat1 = x_33;
  let x_34 : vec4<f32> = u_xlat0;
  let x_35 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_34 * x_35);
  let x_37 : vec4<f32> = u_xlat0;
  let x_40 : vec4<f32> = vs_COLOR0;
  u_xlat0 = (x_37 * x_40);
  let x_49 : vec4<f32> = x_44.x_ClipRect;
  let x_53 : vec4<f32> = x_44.x_ClipRect;
  let x_55 : vec2<f32> = (-(vec2<f32>(x_49.x, x_49.y)) + vec2<f32>(x_53.z, x_53.w));
  let x_56 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_55.x, x_55.y, x_56.z, x_56.w);
  let x_58 : vec4<f32> = u_xlat1;
  let x_61 : vec4<f32> = vs_TEXCOORD2;
  let x_65 : vec2<f32> = (vec2<f32>(x_58.x, x_58.y) + -(abs(vec2<f32>(x_61.x, x_61.y))));
  let x_66 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_65.x, x_65.y, x_66.z, x_66.w);
  let x_68 : vec4<f32> = u_xlat1;
  let x_70 : vec4<f32> = vs_TEXCOORD2;
  let x_72 : vec2<f32> = (vec2<f32>(x_68.x, x_68.y) * vec2<f32>(x_70.z, x_70.w));
  let x_73 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_72.x, x_72.y, x_73.z, x_73.w);
  let x_75 : vec4<f32> = u_xlat1;
  let x_81 : vec2<f32> = clamp(vec2<f32>(x_75.x, x_75.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_82 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_81.x, x_81.y, x_82.z, x_82.w);
  let x_88 : f32 = u_xlat1.y;
  let x_91 : f32 = u_xlat1.x;
  u_xlat1.x = (x_88 * x_91);
  let x_97 : f32 = u_xlat0.w;
  let x_99 : f32 = u_xlat1.x;
  u_xlat3 = ((x_97 * x_99) + -0.00100000004749745131f);
  let x_103 : vec4<f32> = u_xlat0;
  let x_104 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_103 * vec4<f32>(x_104.x, x_104.x, x_104.x, x_104.x));
  let x_109 : vec4<f32> = u_xlat0;
  SV_Target0 = x_109;
  let x_113 : f32 = u_xlat3;
  u_xlatb0 = (x_113 < 0.0f);
  let x_115 : bool = u_xlatb0;
  if (((select(0i, 1i, x_115) * -1i) != 0i)) {
    discard;
  }
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD1_param : vec2<f32>, @location(0) vs_COLOR0_param : vec4<f32>, @location(3) vs_TEXCOORD2_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


