struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_MainTex_TexelSize : vec4<f32>,
}

@group(1) @binding(0) var<uniform> x_12 : PGlobals;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_MainTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_17 : vec4<f32> = x_12.x_MainTex_TexelSize;
  let x_26 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((vec4<f32>(x_17.x, x_17.y, x_17.x, x_17.y) * vec4<f32>(-1.0f, -1.0f, 1.0f, -1.0f)) + vec4<f32>(x_26.x, x_26.y, x_26.x, x_26.y));
  let x_29 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_29, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_34 : vec4<f32> = u_xlat0;
  let x_38 : f32 = x_12.x_RenderViewportScaleFactor;
  u_xlat0 = (x_34 * vec4<f32>(x_38, x_38, x_38, x_38));
  let x_52 : vec4<f32> = u_xlat0;
  let x_54 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_52.x, x_52.y));
  u_xlat1 = x_54;
  let x_58 : vec4<f32> = u_xlat0;
  let x_60 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_58.z, x_58.w));
  u_xlat0 = x_60;
  let x_61 : vec4<f32> = u_xlat0;
  let x_62 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_61 + x_62);
  let x_65 : vec4<f32> = x_12.x_MainTex_TexelSize;
  let x_69 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = ((vec4<f32>(x_65.x, x_65.y, x_65.x, x_65.y) * vec4<f32>(-1.0f, 1.0f, 1.0f, 1.0f)) + vec4<f32>(x_69.x, x_69.y, x_69.x, x_69.y));
  let x_72 : vec4<f32> = u_xlat1;
  u_xlat1 = clamp(x_72, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_76 : vec4<f32> = u_xlat1;
  let x_78 : f32 = x_12.x_RenderViewportScaleFactor;
  u_xlat1 = (x_76 * vec4<f32>(x_78, x_78, x_78, x_78));
  let x_85 : vec4<f32> = u_xlat1;
  let x_87 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_85.x, x_85.y));
  u_xlat2 = x_87;
  let x_91 : vec4<f32> = u_xlat1;
  let x_93 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_91.z, x_91.w));
  u_xlat1 = x_93;
  let x_94 : vec4<f32> = u_xlat0;
  let x_95 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_94 + x_95);
  let x_97 : vec4<f32> = u_xlat1;
  let x_98 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_97 + x_98);
  let x_102 : vec4<f32> = u_xlat0;
  SV_Target0 = (x_102 * vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
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

