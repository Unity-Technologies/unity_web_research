diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_LayerMask : vec4<f32>,
  /* @offset(16) */
  x_OriginalTargetAlphaMask : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var x_OriginalTargetAlphaMap : texture_2d<f32>;

@group(0) @binding(5) var sampler_OriginalTargetAlphaMap : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlat3 : f32;

var<private> u_xlatb6 : bool;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(0) var x_AlphaMapTexture : texture_2d<f32>;

@group(0) @binding(4) var sampler_AlphaMapTexture : sampler;

var<private> u_xlat6 : f32;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD1;
  let x_24 : vec4<f32> = textureSample(x_OriginalTargetAlphaMap, sampler_OriginalTargetAlphaMap, x_23);
  u_xlat0 = x_24;
  let x_25 : vec4<f32> = u_xlat0;
  let x_33 : vec4<f32> = x_28.x_OriginalTargetAlphaMask;
  u_xlat0.x = dot(x_25, x_33);
  let x_41 : f32 = u_xlat0.x;
  u_xlat3 = (-(x_41) + 1.0f);
  let x_49 : f32 = u_xlat3;
  u_xlatb6 = (0.00100000004749745131f < x_49);
  let x_51 : bool = u_xlatb6;
  if (x_51) {
    let x_60 : vec2<f32> = vs_TEXCOORD1;
    let x_61 : vec4<f32> = textureSample(x_AlphaMapTexture, sampler_AlphaMapTexture, x_60);
    u_xlat1 = x_61;
    let x_69 : vec2<f32> = vs_TEXCOORD0;
    let x_70 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_69);
    u_xlat6 = x_70.x;
    let x_73 : f32 = u_xlat0.x;
    let x_74 : f32 = u_xlat6;
    u_xlat0.x = max(x_73, x_74);
    let x_78 : f32 = u_xlat0.x;
    u_xlat6 = (-(x_78) + 1.0f);
    let x_81 : f32 = u_xlat6;
    let x_82 : f32 = u_xlat3;
    u_xlat3 = (x_81 / x_82);
    let x_84 : f32 = u_xlat3;
    u_xlat3 = clamp(x_84, 0.0f, 1.0f);
    let x_90 : vec4<f32> = x_28.x_LayerMask;
    u_xlat2 = (-(x_90) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
    let x_94 : vec4<f32> = u_xlat2;
    u_xlat2 = clamp(x_94, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
    let x_98 : vec4<f32> = u_xlat1;
    let x_99 : vec4<f32> = u_xlat2;
    u_xlat1 = (x_98 * x_99);
    let x_101 : vec4<f32> = u_xlat0;
    let x_104 : vec4<f32> = x_28.x_LayerMask;
    u_xlat2 = (vec4<f32>(x_101.x, x_101.x, x_101.x, x_101.x) * x_104);
    let x_108 : vec4<f32> = u_xlat1;
    let x_109 : f32 = u_xlat3;
    let x_112 : vec4<f32> = u_xlat2;
    SV_Target0 = ((x_108 * vec4<f32>(x_109, x_109, x_109, x_109)) + x_112);
    return;
  }
  let x_116 : vec4<f32> = x_28.x_LayerMask;
  SV_Target0 = x_116;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec2<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


